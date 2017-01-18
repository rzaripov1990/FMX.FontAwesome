{*******************************************************}
{                                                       }
{             Delphi FireMonkey Platform                }
{ Copyright(c) 2016 Embarcadero Technologies, Inc.      }
{              All rights reserved                      }
{                                                       }
{*******************************************************}

unit FMX.FontGlyphs;

interface

{$SCOPEDENUMS ON}

uses
  System.Types, System.SysUtils, System.UITypes, FMX.Surfaces, FMX.Graphics;

type
  TFontGlyphStyle = (NoGlyph, HasPath, ColorGlyph);
  TFontGlyphStyles = set of TFontGlyphStyle;

  TFontSettings = record
    Family: string;
    Style: TFontStyleExt;
    Size: Single;
    Scale: Single;
  end;

  TFontGlyph = class
  private
    FBitmap: TBitmapSurface;
    FPath: TPathData;
    FOrigin: TPoint;
    FAdvance: Single;
    FVerticalAvance: Single;
    FStyle: TFontGlyphStyles;
  public
    constructor Create(const AOrigin: TPoint; const AAdvance, AVertAdvance: Single;
      const AStyle: TFontGlyphStyles);
    destructor Destroy; override;
    // Raster apperiance for glyph
    property Bitmap: TBitmapSurface read FBitmap;
    // 3D apperiance for glyph
    property Path: TPathData read FPath;
    // Origin of raster in char rect
    property Origin: TPoint read FOrigin;
    // Space from current point to next char
    property Advance: Single read FAdvance;
    // Space from current point to line
    property VerticalAdvance: Single read FVerticalAvance;
    property Style: TFontGlyphStyles read FStyle;
  end;

  ETFontGlyphManagerException = class(Exception);

  TFontGlyphSetting = (Bitmap, PremultipliedAlpha, Path);

  TFontGlyphSettingHelper = record helper for TFontGlyphSetting
  const
    gsBitmap = TFontGlyphSetting.Bitmap deprecated 'Use TFontGlyphSetting.Bitmap';
    gsPremultipliedAlpha = TFontGlyphSetting.PremultipliedAlpha deprecated 'Use TFontGlyphSetting.PremultipliedAlpha';
    gsPath = TFontGlyphSetting.Path deprecated 'Use TFontGlyphSetting.Path';
  end;
  TFontGlyphSettings = set of TFontGlyphSetting;

  TFontGlyphManager = class abstract
  private class var
    FCurrentManager: TFontGlyphManager;
    class function InternalGetFontGlyphManager: TFontGlyphManager; static;
  private
    FCurrentSettings: TFontSettings;
  protected
    function HasGlyph(const Ch: UCS4Char): Boolean;
    procedure LoadResource; virtual; abstract;
    procedure FreeResource; virtual; abstract;
    function DoGetGlyph(const Char: UCS4Char; const Settings: TFontGlyphSettings): TFontGlyph; virtual; abstract;
    function DoGetBaseline: Single; virtual; abstract;
    property CurrentSettings: TFontSettings read FCurrentSettings;
  public
    destructor Destroy; override;
    // Reserved for internal use only - do not call directly!
    class procedure UnInitialize;
    function GetGlyph(const Char: UCS4Char; const Font: TFont; const Scale: Single;
      const Settings: TFontGlyphSettings): TFontGlyph;
    function GetBaseline(const Font: TFont; const Scale: Single): Single;
    class property Current: TFontGlyphManager read InternalGetFontGlyphManager;
  end;

implementation

uses
{$IFDEF MSWINDOWS}
  FMX.FontGlyphs.Win,
{$ENDIF}
{$IFDEF MACOS}
{$IFNDEF NEXTGEN}
  FMX.FontGlyphs.Mac,
{$ENDIF}
{$ENDIF}
{$IFDEF IOS}
  FMX.FontGlyphs.iOS,
{$ENDIF}
{$IFDEF ANDROID}
  FMX.FontGlyphs.Android,
{$ENDIF}
  System.Math, System.TypInfo, FMX.Consts, System.Math.Vectors;

{ TFontGlyph }

constructor TFontGlyph.Create;
begin
  inherited Create;
  if not (TFontGlyphStyle.NoGlyph in AStyle) then
    FBitmap := TBitmapSurface.Create;
  if TFontGlyphStyle.HasPath in AStyle then
    FPath := TPathData.Create;
  FOrigin := AOrigin;
  FAdvance := AAdvance;
  FVerticalAvance := AVertAdvance;
  FStyle := AStyle;
end;

destructor TFontGlyph.Destroy;
begin
  FreeAndNil(FBitmap);
  FreeAndNil(FPath);
  inherited;
end;

{ TFontGlyphManager }

destructor TFontGlyphManager.Destroy;
begin
  FreeResource;
  inherited;
end;

function TFontGlyphManager.GetBaseline(const Font: TFont; const Scale: Single): Single;
begin
  if not SameText(FCurrentSettings.Family, Font.Family) or
     not SameValue(FCurrentSettings.Size, Font.Size, TEpsilon.FontSize) or
     (FCurrentSettings.Style <> Font.StyleExt) or
     not SameValue(FCurrentSettings.Scale, Scale, TEpsilon.Scale) then
  begin
    FreeResource;
    FCurrentSettings.Family := Font.Family;
    FCurrentSettings.Size := Font.Size;
    FCurrentSettings.Style := Font.StyleExt;
    FCurrentSettings.Scale := Scale;
    LoadResource;
  end;
  Result := DoGetBaseline;
end;

function TFontGlyphManager.GetGlyph(const Char: UCS4Char; const Font: TFont;
  const Scale: Single; const Settings: TFontGlyphSettings): TFontGlyph;
begin
  if not SameText(FCurrentSettings.Family, Font.Family) or
     not SameValue(FCurrentSettings.Size, Font.Size, TEpsilon.FontSize) or
     (FCurrentSettings.Style <> Font.StyleExt) or
     not SameValue(FCurrentSettings.Scale, Scale, TEpsilon.Scale) then
  begin
    FreeResource;
    FCurrentSettings.Family := Font.Family;
    FCurrentSettings.Size := Font.Size;
    FCurrentSettings.Style := Font.StyleExt;
    FCurrentSettings.Scale := Scale;
    LoadResource;
  end;
  Result := DoGetGlyph(Char, Settings);
end;

function TFontGlyphManager.HasGlyph(const Ch: UCS4Char): Boolean;
begin
  if Ch = 32 then
    Result := False
  else
    Result := True;
end;

class function TFontGlyphManager.InternalGetFontGlyphManager: TFontGlyphManager;
begin
  if FCurrentManager = nil then
  begin
    {$IFDEF MSWINDOWS}
    FCurrentManager := TWinFontGlyphManager.Create;
    {$ENDIF}
    {$IFDEF IOS}
    FCurrentManager := TIOSFontGlyphManager.Create;
    {$ENDIF}
    {$IFDEF MACOS}
    {$IFNDEF NEXTGEN}
    FCurrentManager := TMacFontGlyphManager.Create;
    {$ENDIF}
    {$ENDIF}
    {$IFDEF ANDROID}
    FCurrentManager := TAndroidFontGlyphManager.Create;
    {$ENDIF}
    if FCurrentManager = nil then
      raise ETFontGlyphManagerException.Create('No TFontGlyphManager implementation found');
  end;
  Result := FCurrentManager;
end;

class procedure TFontGlyphManager.UnInitialize;
begin
  FreeAndNil(FCurrentManager);
end;

procedure RegisterAliases;
begin
  AddEnumElementAliases(TypeInfo(TFontGlyphSetting), ['gsBitmap', 'gsPremultipliedAlpha', 'gsPath']);
end;

procedure UnregisterAliases;
begin
  RemoveEnumElementAliases(TypeInfo(TFontGlyphSetting));
end;

initialization
  RegisterAliases;

finalization
  UnregisterAliases;
end.
