program JumpListFilesDemo;

uses
  Vcl.Forms,
  Windows,
  JumpListFiles_MainForm in 'JumpListFiles_MainForm.pas' {JumpListForm},
  WinProcessHelpers in 'WinProcessHelpers.pas';

{$R *.res}

begin
  // check if mutex already exists
  HMutex := CreateMutex(nil, False, 'JumpListFilesDemoMutex');
  if WaitForSingleObject(hMutex, 0) <> wait_TimeOut then
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TJumpListForm, JumpListForm);
    Application.Run;
  end
  else
    ActivateWindow (TJumpListForm);
end.
