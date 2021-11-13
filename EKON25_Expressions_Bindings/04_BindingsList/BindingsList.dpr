program BindingsList;

uses
  Vcl.Forms,
  BindingsList_MainForm in 'BindingsList_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
