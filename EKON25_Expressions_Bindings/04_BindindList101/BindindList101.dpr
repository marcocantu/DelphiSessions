program BindindList101;

uses
  Vcl.Forms,
  Binfings101BindingsList_MainForm in 'Binfings101BindingsList_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormBindings, FormBindings);
  Application.Run;
end.
