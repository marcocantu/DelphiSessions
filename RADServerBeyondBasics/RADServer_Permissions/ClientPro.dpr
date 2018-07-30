program ClientPro;

uses
  System.StartUpCopy,
  FMX.Forms,
  ClientForm in 'ClientForm.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
