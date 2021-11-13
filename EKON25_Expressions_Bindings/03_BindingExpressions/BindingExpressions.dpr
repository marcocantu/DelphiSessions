program BindingExpressions;

uses
  Vcl.Forms,
  BindingExpressions_MainForm in 'BindingExpressions_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormBindings, FormBindings);
  Application.Run;
end.
