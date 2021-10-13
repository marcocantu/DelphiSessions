program DynamicStyles;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  DynamicStylesMain in 'DynamicStylesMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.HelpFile := 'No help for you';
  Application.Title := 'Warning, may induce seizures!';
  Application.CreateForm(TForm1, Form1);
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.Run;
end.
