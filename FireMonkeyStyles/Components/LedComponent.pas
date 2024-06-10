unit LedComponent;

interface

uses
  System.Classes, System.Types, System.UITypes, System.UIConsts, FMX.Types, FMX.Objects;

type
  TLedStatus = (lsOn, lsOff);

  TCntLed = class(TShape)
  private
    fColor: TAlphaColor;
    fStatus: TLedStatus;
    procedure SetColor(const Value: TAlphaColor);
    procedure SetStatus(const Value: TLedStatus);
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Status: TLedStatus
      read fStatus write SetStatus default lsOn;
    property Color: TAlphaColor
      read fColor write SetColor default claRed;
    property Position;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents ('CntFmx', [TCntLed]);
end;

{ TCntLed }

constructor TCntLed.Create(AOwner: TComponent);
begin
  inherited;
  // set default values
  fColor := claRed;
  fStatus := lsOn;
end;

procedure TCntLed.Paint;
var
  Radius, XCenter, YCenter: Double;
begin
  // get the minimum between width
  // and height
  if Height > Width then
    Radius := Width / 2 - 2
  else
    Radius := Height / 2 - 2;
  // get the center
  XCenter := Width / 2;
  YCenter := Height / 2;
  // led border color (fixed)
  Canvas.Fill.Color := claGray;
  Canvas.FillEllipse (RectF(
    XCenter - Radius, YCenter - Radius,
    XCenter + Radius, YCenter + Radius),
    1.0);
  // led surface
  if fStatus = lsOn then
  begin
    Canvas.Fill.Color := fColor;
    Radius := Radius - 3;
    Canvas.FillEllipse (RectF(
      XCenter - Radius, YCenter - Radius,
      XCenter + Radius, YCenter + Radius),
    1.0);
  end;
end;

procedure TCntLed.SetColor(const Value: TAlphaColor);
begin
  fColor := Value;
end;

procedure TCntLed.SetStatus(const Value: TLedStatus);
begin
  fStatus := Value;
end;

end.
