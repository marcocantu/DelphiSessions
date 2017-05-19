unit Notifications;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Notification, Vcl.StdCtrls;

type
  TNotificationsForm = class(TForm)
    mmLog: TMemo;
    btnShow: TButton;
    btnCancel: TButton;
    btnCancelAll: TButton;
    btnShowAnother: TButton;
    btnCancelAnother: TButton;
    NotificationCenter1: TNotificationCenter;
    procedure btnShowClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCancelAllClick(Sender: TObject);
    procedure btnShowAnotherClick(Sender: TObject);
    procedure btnCancelAnotherClick(Sender: TObject);
    procedure NotificationCenter1ReceiveLocalNotification(Sender: TObject;
      ANotification: TNotification);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotificationsForm: TNotificationsForm;

implementation

{$R *.dfm}

procedure TNotificationsForm.btnCancelAllClick(Sender: TObject);
begin
  NotificationCenter1.CancelAll;
end;

procedure TNotificationsForm.btnCancelAnotherClick(Sender: TObject);
begin
  NotificationCenter1.CancelNotification('Windows10Notification2');
end;

procedure TNotificationsForm.btnCancelClick(Sender: TObject);
begin
  NotificationCenter1.CancelNotification('Windows10Notification');
end;

procedure TNotificationsForm.btnShowAnotherClick(Sender: TObject);
var
  MyNotification: TNotification;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name := 'Windows10Notification2';
    MyNotification.Title := 'Windows 10 Notification #2';
    MyNotification.AlertBody := 'RAD Studio 10 Seattle';

    NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.Free;
  end;
end;

procedure TNotificationsForm.btnShowClick(Sender: TObject);
var
  MyNotification: TNotification;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name := 'Windows10Notification';
    MyNotification.Title := 'Windows 10 Notification #1';
    MyNotification.AlertBody := 'RAD Studio 10 Seattle';

    NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.Free;
  end;
end;


procedure TNotificationsForm.NotificationCenter1ReceiveLocalNotification(
  Sender: TObject; ANotification: TNotification);
begin
  mmLog.Lines.Add('Notification received: ' + ANotification.Name);
end;

end.
