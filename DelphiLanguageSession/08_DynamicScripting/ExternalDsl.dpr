program ExternalDsl;

uses
  Forms,
  ExternalDslMainForm in 'ExternalDslMainForm.pas' {Form39},
  EdslScripting in 'EdslScripting.pas',
  ClassicAppointment in 'ClassicAppointment.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm39, Form39);
  Application.Run;
end.
