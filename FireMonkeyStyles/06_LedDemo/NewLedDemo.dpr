program NewLedDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  NewLedDemoForm in 'NewLedDemoForm.pas' {Form25};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm25, Form25);
  Application.Run;
end.
