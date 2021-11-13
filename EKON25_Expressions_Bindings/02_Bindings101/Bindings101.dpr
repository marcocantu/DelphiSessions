program Bindings101;

uses
  Vcl.Forms,
  Bindings101_MainForm in 'Bindings101_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormBindings, FormBindings);
  Application.Run;
end.
