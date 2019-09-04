unit CallWinApi_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Types;

type
  TFormCallAPI = class(TForm)
    btnStandard: TButton;
    btnDynamic: TButton;
    btnDelayed: TButton;
    procedure btnStandardClick(Sender: TObject);
    procedure btnDynamicClick(Sender: TObject);
    procedure btnDelayedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCallAPI: TFormCallAPI;

implementation

{$R *.dfm}

type
  TMessageBoxCall = function (hWnd: HWND; lpText, lpCaption: PWideChar; uType: UINT): Integer; stdcall;

procedure TFormCallAPI.btnStandardClick(Sender: TObject);
begin
  MessageBox (0, 'Some text here', 'Caption', MB_OK);
end;

procedure TFormCallAPI.btnDelayedClick(Sender: TObject);
var
  aPoint: TPoint;
  hwnd1: THandle;
begin
  aPoint := Point (100, 100);
  if CheckWin32Version (6, 0) then
  begin
    hwnd1 := WindowFromPhysicalPoint (aPoint);
    ShowMessage (IntToStr (hwnd1));
  end;
end;

procedure TFormCallAPI.btnDynamicClick(Sender: TObject);
var
  hDllInst: THandle;
  messageCall: TMessageBoxCall;
begin
  hDllInst := SafeLoadLibrary ('user32.dll');
  if hDllInst >= 32 then
  try
    messageCall := TMessageBoxCall (
      GetProcAddress (hDllInst, 'MessageBoxW'));
    messageCall (0, 'Some text here', 'Caption', MB_OK);
  finally
    FreeLibrary(hDllInst);
  end;
end;

end.
