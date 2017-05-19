program AnonymousCalculatedFields;

uses
  Vcl.Forms,
  AnonymousCalculatedFields_MainForm in 'AnonymousCalculatedFields_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
