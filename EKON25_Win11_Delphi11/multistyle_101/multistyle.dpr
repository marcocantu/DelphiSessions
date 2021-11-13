program multistyle;

uses
  Vcl.Forms,
  multi_style_form in 'multi_style_form.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
