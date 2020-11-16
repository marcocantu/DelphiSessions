program PrimitivePaint;

uses
  FMX.Forms,
  PrimitivePaint_MainForm in 'PrimitivePaint_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
