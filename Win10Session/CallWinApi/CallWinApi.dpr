program CallWinApi;

uses
  Forms,
  CallWinApi_MainForm in 'CallWinApi_MainForm.pas' {FormCallAPI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCallAPI, FormCallAPI);
  Application.Run;
end.
