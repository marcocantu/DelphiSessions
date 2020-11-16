program LedDemo;

uses
  FMX.Forms,
  LedDemo_MainForm in 'LedDemo_MainForm.pas' {LedDemoForm},
  LedComponent in '..\Components\LedComponent.pas',
  StyledLedComponent in '..\Components\StyledLedComponent.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLedDemoForm, LedDemoForm);
  Application.Run;
end.
