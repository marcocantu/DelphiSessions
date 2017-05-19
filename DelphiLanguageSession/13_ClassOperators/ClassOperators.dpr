program ClassOperators;

uses
  System.StartUpCopy,
  FMX.Forms,
  ClassOpMainForm in 'ClassOpMainForm.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
