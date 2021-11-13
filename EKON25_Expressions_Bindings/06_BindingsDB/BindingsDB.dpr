program BindingsDB;

uses
  Vcl.Forms,
  BindingsDB_MainForm in 'BindingsDB_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
