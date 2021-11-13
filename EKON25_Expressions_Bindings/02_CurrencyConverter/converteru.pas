unit converteru;

interface

uses System.SysUtils, System.Classes;

type
  TConvertor = class(TComponent)
  private
    function GetEuroConversion: Extended;
    function GetDollarConversion: Extended;
  public
    { Public declarations }
    function ConvertToDollars(const Value: string): String;
    function ConvertToEuros(const Value: string): String;
    property EuroConversion: Extended read GetEuroConversion;
    property DollarConversion: Extended read GetDollarConversion;
  end;

implementation

function TConvertor.ConvertToDollars(const Value: string): string;
var
  f: Extended;
begin
  Result := '';
  if TryStrToFloat(Value, f) then
  begin
    Result := FloatToStr(f * DollarConversion);
  end;
end;

function TConvertor.ConvertToEuros(const Value: string): string;
var
  f: Extended;
begin
  Result := '';
  if TryStrToFloat(Value, f) then
  begin
    Result := FloatToStr(f * EuroConversion) ;
  end;
end;

function TConvertor.GetDollarConversion: Extended;
begin
 Result := 1 / EuroConversion;
end;

function TConvertor.GetEuroConversion: Extended;
begin
  //In a real world example, this value would
  //be obtained from a Web service or other source.
  Result := 0.762
end;

end.
