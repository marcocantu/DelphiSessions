program PlatformDialog;

uses
  System.StartUpCopy,
  FMX.Forms,
  PlatformDialog_Form in 'PlatformDialog_Form.pas' {Form41};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm41, Form41);
  Application.Run;
end.
