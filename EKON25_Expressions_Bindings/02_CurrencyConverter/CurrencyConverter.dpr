program CurrencyConverter;

uses
  Vcl.Forms,
  mainformu in 'mainformu.pas' {Form1},
  converteru in 'converteru.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
