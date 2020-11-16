program SimpleClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  SimpleClient_Form in 'SimpleClient_Form.pas' {Form41};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm41, Form41);
  Application.Run;
end.
