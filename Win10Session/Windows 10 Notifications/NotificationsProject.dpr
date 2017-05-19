program NotificationsProject;

uses
  Vcl.Forms,
  Notifications in 'Notifications.pas' {NotificationsForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Blue');
  Application.CreateForm(TNotificationsForm, NotificationsForm);
  Application.Run;
end.
