unit PerformanceCollections;

interface

uses
  System.SysUtils, Generics.Collections;

type
  TNewSimpleClass = class
  private
    SomeData: Integer;
    SomeString: string;
  public
    constructor Create;

    class procedure FillList;
  end;

  TMyList = class
  var
    FItems: array of TNewSimpleClass;
  private
    function GetItem(Index: Integer): TNewSimpleClass; inline; unsafe;
    procedure SetItem(Index: Integer; const Value: TNewSimpleClass); inline;
  public
    function Add(const Value: TNewSimpleClass): Integer; inline;
    property Items[Index: Integer]: TNewSimpleClass read GetItem write SetItem; default;
  end;


implementation

const
  ObjectsCount = 100000; // 100K

var
  list: TList<TNewSimpleClass>;
  myList: TMyList;

{ TNewSimpleClass }

constructor TNewSimpleClass.Create;
begin
  SomeString := IntToStr (Random (ObjectsCount));
end;

class procedure TNewSimpleClass.FillList;
var
  I: Integer;
begin
  list := TList<TNewSimpleClass>.Create;
  for I := 1 to ObjectsCount do
    list.Add(TNewSimpleClass.Create);

  writeln ('Refcount:');
  writeln (list[100].RefCount);

  myList := TMyList.Create;
  for I := 1 to ObjectsCount do
    myList.Add(TNewSimpleClass.Create);

  writeln ('Refcount:');
  writeln (list[100].RefCount);
end;

{ TMyList<T> }

function TMyList.Add(const Value: TNewSimpleClass): Integer;
begin
  SetLength (FItems, Length (FItems) + 1);
  FItems [Length (FItems) - 1] := Value;
end;

function TMyList.GetItem(Index: Integer): TNewSimpleClass;
begin
  Result := FItems[Index];
end;

procedure TMyList.SetItem(Index: Integer; const Value: TNewSimpleClass);
begin
  FItems[Index] := Value;
end;

end.
