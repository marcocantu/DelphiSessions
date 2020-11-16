unit StyledLedComponent;

interface

uses
  System.Classes, System.Types, System.UITypes, System.UIConsts, FMX.Types,
  FMX.Objects, FMX.StdCtrls, FMX.Controls;

type
  TLedStatus = (lsOn, lsOff);

  TCntStyledLed = class(TStyledControl)
  private
    fLedCircle: TCircle;
    fColor: TAlphaColor;
    fStatus: TLedStatus;
    procedure SetColor(const Value: TAlphaColor);
    procedure SetStatus(const Value: TLedStatus);
  public
    constructor Create(AOwner: TComponent); override;
    procedure ApplyStyleLookup; override;
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
  RegisterComponents ('CntFmx', [TCntStyledLed]);
end;
{ TCntStyledLed }

procedure TCntStyledLed.ApplyStyleLookup;
var
  S: TFmxObject;
begin
  inherited;

  S := FindStyleResource('led');
  if (S <> nil) and (S is TCircle) then
  begin
    fLedCircle := TCircle(S);
    fLedCircle.Fill.Color := fColor;
    fLedCircle.Visible := fStatus = lsOn;
  end;
end;

constructor TCntStyledLed.Create(AOwner: TComponent);
begin
  inherited;
  fColor := claRed;
end;

procedure TCntStyledLed.SetColor(const Value: TAlphaColor);
begin
  fColor := Value;
  if Assigned (fLedCircle) then
    fLedCircle.Fill.Color := fColor;
end;

procedure TCntStyledLed.SetStatus(const Value: TLedStatus);
begin
  fStatus := value;
  if Assigned (fLedCircle) then
    fLedCircle.Visible := fStatus = lsOn;
end;

end.
