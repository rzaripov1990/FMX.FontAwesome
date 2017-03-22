program prgFontAwesome;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.FontGlyphs.Android in 'FMX.FontGlyphs.Android.pas',
  FMX.FontAwesome in 'FMX.FontAwesome.pas',
  uMain in 'uMain.pas' {FormMain},
  FMX.FontGlyphs in 'FMX.FontGlyphs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
