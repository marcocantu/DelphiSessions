unit Win11Forms;

interface

uses
  VCL.Forms;

type
  TRoundedCornerType = (
    rcDefault, // Windows default or global app setting
    rcOff, // disabled
    rcOn, // active
    rcSmall); // active small size

  TForm = class (VCL.Forms.TForm)
  private
    FRoundedCorners: TRoundedCornerType;
    class var FDefaultRoundedCorners: TRoundedCornerType;
    procedure SetRoundedCorners(const Value: TRoundedCornerType);
    function GetFormCornerPreference: Cardinal;
    function GetDefaultCornerPreference: Cardinal;
  protected
    procedure CreateWnd; override;
    procedure SetWindowsCorners;
  public
    class property DefaultRoundedCorners: TRoundedCornerType
      read FDefaultRoundedCorners write FDefaultRoundedCorners;
    property RoundedCorners: TRoundedCornerType
      read FRoundedCorners write SetRoundedCorners;
  end;

implementation

uses
  Winapi.Dwmapi, VCL.Dialogs, System.SysUtils;

const
  DWMWCP_DEFAULT    = 0; // Let the system decide whether or not to round window corners (default)
  DWMWCP_DONOTROUND = 1; // Never round window corners
  DWMWCP_ROUND      = 2; // Round the corners if appropriate
  DWMWCP_ROUNDSMALL = 3; // Round the corners if appropriate, with a small radius

  DWMWA_WINDOW_CORNER_PREFERENCE = 33; // WINDOW_CORNER_PREFERENCE controls the policy that rounds top-level window corners

{ TForm }

procedure TForm.CreateWnd;
begin
  inherited;
  SetWindowsCorners;
end;

function TForm.GetDefaultCornerPreference: Cardinal;
begin
  case FDefaultRoundedCorners of
    rcOff: Result := DWMWCP_DONOTROUND;
    rcOn: Result := DWMWCP_ROUND;
    rcSmall: Result := DWMWCP_ROUNDSMALL;
  else
    Result := DWMWCP_DEFAULT;
  end;
end;

function TForm.GetFormCornerPreference: Cardinal;
begin
  case FRoundedCorners of
    rcOff: Result := DWMWCP_DONOTROUND;
    rcOn: Result := DWMWCP_ROUND;
    rcSmall: Result := DWMWCP_ROUNDSMALL;
  else
    Result := GetDefaultCornerPreference;
  end;
end;

procedure TForm.SetRoundedCorners(const Value: TRoundedCornerType);
begin
  FRoundedCorners := Value;
  SetWindowsCorners;
end;

procedure TForm.SetWindowsCorners;
var
  CornerPreference: Cardinal;
begin
  if HandleAllocated then
  begin
    CornerPreference := GetFormCornerPreference;
    Winapi.Dwmapi.DwmSetWindowAttribute(Handle, DWMWA_WINDOW_CORNER_PREFERENCE, @CornerPreference, sizeof(CornerPreference));
  end;
end;

end.
