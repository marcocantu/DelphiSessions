program PlatformControls;

uses
  System.StartUpCopy,
  FMX.Forms,
  PlatformControls_Form in 'PlatformControls_Form.pas' {Form42};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm42, Form42);
  Application.Run;
end.
