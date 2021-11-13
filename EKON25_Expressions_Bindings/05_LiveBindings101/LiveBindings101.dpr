program LiveBindings101;

uses
  Vcl.Forms,
  LiveBindings101_MainForm in 'LiveBindings101_MainForm.pas' {Form3},
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
