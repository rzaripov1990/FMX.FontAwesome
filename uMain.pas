unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.MultiView, FMX.Layouts, FMX.Objects;

type
  TFormMain = class(TForm)
    ToolBar1: TToolBar;
    lbNavBar: TLabel;
    ListView1: TListView;
    MultiView1: TMultiView;
    Layout1: TLayout;
    Text1: TText;
    sbPlus: TSpeedButton;
    sbMinus: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure sbPlusClick(Sender: TObject);
    procedure sbMinusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses
  FontAwesome;

/// <summary> Применить всем дочерним компонентам кастомный стиль </summary>
procedure FontAwesomeApply(const Control: TControl);
var
  i: Integer;
begin
  if Control is TControl then
  begin
    FontAwesomeAssign(TControl(Control));
    if Control is TStyledControl then
      TStyledControl(Control).ApplyStyleLookup;
  end;
  for i := 0 to Control.ControlsCount - 1 do
    FontAwesomeApply(Control.Controls[i]);
end;

/// <summary> настройка ListView </summary>
procedure FontGlyphConfig(const aLV: TListView);
begin
  aLV.CanSwipeDelete := false;
  aLV.ItemAppearance.ItemAppearance := 'Custom';
  with aLV.ItemAppearanceObjects.ItemObjects do
  begin
    Image.Visible := false;
    Accessory.Visible := false;
    TextButton.Visible := false;
    GlyphButton.Visible := false;

    Text.Visible := true;
    Text.PlaceOffset.X := 40;

    Detail.Visible := true;
    Detail.Width := 30;
    Detail.PlaceOffset.X := 0;
    Detail.TextAlign := TTextAlign.Center;
    Detail.TextColor := TAlphaColorRec.Red;
    Detail.Font.Size := 24;
    Detail.Font.Family := FontAwesomeName;
  end;
end;

/// <summary> заполнение ListView </summary>
procedure MenuMake(const aLV: TListView);
const
  MAXARRAY = 5;
  TLVMenuItems: array [0 .. MAXARRAY] of string = ('Адресная книга', 'Карточка', 'Telegram', 'О нас', 'Обратная связь',
    'Настройка');
  TLVMenuItemsSymb: array [0 .. MAXARRAY] of string = (fa_address_book, fa_address_card, fa_telegram, fa_info_circle,
    fa_envelope, fa_cog);
var
  i: Integer;
begin
  FontGlyphConfig(aLV);
  for i := Low(TLVMenuItems) to High(TLVMenuItems) do
  begin
    with aLV.Items.Add do
    begin
      Text := TLVMenuItems[i];
      Detail := TLVMenuItemsSymb[i];
      Tag := i;
    end;
  end;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  FontAwesomeApply(ToolBar1);
  lbNavBar.Font.Size := 20;
  sbPlus.Font.Size := 20;
  sbMinus.Font.Size := 20;

  lbNavBar.Text := fa_navicon_alias;
  sbMinus.Text := fa_minus_square;
  sbPlus.Text := fa_plus_square;

  sbMinus.FontColor := TAlphaColorRec.Blue;
  sbPlus.FontColor := TAlphaColorRec.Green;

  MenuMake(ListView1);

  FontAwesomeAssign(Text1);
  Text1.Font.Size := 20;
  Text1.Text := 'FontAwesome: ' + #13#10 + fa_flag + ' One Font, Over 605 Icons' + #13#10 + fa_eye +
    ' Perfect on Retina Displays' + #13#10 + fa_desktop + ' Desktop Friendly';
end;

procedure TFormMain.sbMinusClick(Sender: TObject);
begin
  Text1.Font.Size := Text1.Font.Size - 1;
end;

procedure TFormMain.sbPlusClick(Sender: TObject);
begin
  Text1.Font.Size := Text1.Font.Size + 1;
end;

end.
