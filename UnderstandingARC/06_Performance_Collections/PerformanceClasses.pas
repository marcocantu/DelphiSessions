unit PerformanceClasses;

interface

type
  TSimpleClass = class
  private
    SomeData: Integer;
    SomeString: string;
  public
    constructor Create;
    destructor Destroy; override;
    procedure DoSomething;

    class procedure DoSomeOnObj (aSC: TSimpleClass);
    class procedure DoSomeOnConstObj (const aSC: TSimpleClass);

    class procedure CreateMany;
    class procedure CreateManyConst;
    class procedure CreateManyNoARC;
  end;

implementation

uses
  System.Threading, System.Classes, System.SysUtils, System.SyncObjs;

{ TSimpleClass }

const
  ObjectsCount = 2000000; // two million

constructor TSimpleClass.Create;
begin
  SomeString := IntToStr (Random (ObjectsCount));
end;

destructor TSimpleClass.Destroy;
begin
  // writeln ('gone');
  inherited;
end;

class procedure TSimpleClass.CreateMany;
var
  sc: TSimpleClass;
  I: Integer;
begin
  for I := 1 to ObjectsCount do
  begin
    sc := TSimpleClass.Create;
    DoSomeOnObj (sc);
  end;
end;

class procedure TSimpleClass.CreateManyConst;
var
  sc: TSimpleClass;
  I: Integer;
begin
  for I := 1 to ObjectsCount do
  begin
    sc := TSimpleClass.Create;
    DoSomeOnConstObj (sc);
  end;
end;

class procedure TSimpleClass.CreateManyNoARC;
var
  [unsafe] sc: TSimpleClass;
  I: Integer;
begin
  for I := 1 to ObjectsCount do
  begin
    sc := TSimpleClass.Create;
    try
      DoSomeOnConstObj (sc);
    finally
      sc.DisposeOf;
    end;
  end;
end;

class procedure TSimpleClass.DoSomeOnConstObj(const aSC: TSimpleClass);
begin
   aSC.DoSomething;
end;

class procedure TSimpleClass.DoSomeOnObj(aSC: TSimpleClass);
begin
   aSC.DoSomething;
end;

procedure TSimpleClass.DoSomething;
begin
  SomeData := random (ObjectsCount);
end;

end.
