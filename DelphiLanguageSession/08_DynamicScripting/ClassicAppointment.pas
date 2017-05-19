  unit ClassicAppointment;

interface

uses
  Classes, SysUtils;

type
  TStdAppointment = class (TObject)
  private
    FToDate: TDateTime;
    FAt: string;
    FFromDate: TDateTime;
    FDescription: string;
    procedure SetAt(const Value: string);
    procedure SetDescription(const Value: string);
    procedure SetFromDate(const Value: TDateTime);
    procedure SetToDate(const Value: TDateTime);
  public
    constructor Create;
    function ToString: string;
  public
    property At: string read FAt write SetAt;
    property FromDate: TDateTime read FFromDate write SetFromDate;
    property ToDate: TDateTime read FToDate write SetToDate;
    property Description: string read FDescription write SetDescription;
  end;

implementation

{ TStdAppointment }

constructor TStdAppointment.Create;
begin
  FFromDate := Now;
  FToDate := Now;
end;

procedure TStdAppointment.SetAt(const Value: string);
begin
  FAt := Value;
end;

procedure TStdAppointment.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TStdAppointment.SetFromDate(const Value: TDateTime);
begin
  FFromDate := Value;
end;

procedure TStdAppointment.SetToDate(const Value: TDateTime);
begin
  FToDate := Value;
end;


function TStdAppointment.ToString: string;
begin
  Result := fDescription + ' at ' + fAt +
    ' from ' + DateTimeToStr (fFromDate) + ' to ' +
    DateTimeToStr(fToDate);
end;

end.
