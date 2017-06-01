unit ArcExperiments_Classes;

interface

uses
  System.SysUtils, System.Types, System.Classes, System.Variants;

type
  TMySimpleClass = class
  public
    constructor Create();
    destructor Destroy (); override;
    procedure DoSomething(bRaise: Boolean = False);
  public
    class procedure CreateOnly;
    class procedure TryFinally;
    class procedure SetNil;
  end;

procedure Log (const strMsg: string);

implementation

{ TMySimpleClass }

constructor TMySimpleClass.Create;
begin
  Log(classname + ' created');
end;

class procedure TMySimpleClass.CreateOnly;
var
  MyObj: TMySimpleClass;
begin
  Log ('Starting CreateOnly');
  MyObj := TMySimpleClass.Create;
  MyObj.DoSomething;
  Log ('Done with CreateOnly');
end;

destructor TMySimpleClass.Destroy;
begin
  Log(classname + ' destroyed');
  inherited;
end;


procedure TMySimpleClass.DoSomething (bRaise: Boolean);
begin
  Log('Something');
  if bRaise then
    raise Exception.Create('Error Message');
end;

class procedure TMySimpleClass.SetNil;
var
  MyObj: TMySimpleClass;
begin
  Log ('Starting SetNil');
  MyObj := TMySimpleClass.Create;
  try try
    MyObj.DoSomething (False); // True => raise;
  except
    Log ('Exception handled');
  end;
  finally
    MyObj := nil;
  end;
  Log ('Done with SetNil');
end;

class procedure TMySimpleClass.TryFinally;
var
  MyObj: TMySimpleClass;
  MyObj2: TMySimpleClass;
begin
  Log ('Starting TryFinally');
  MyObj := TMySimpleClass.Create;
  try
    MyObj.DoSomething;
    myObj2 := MyObj;
  finally
    MyObj.DisposeOf;
  end;
  Log ('Done with TryFinally');
end;

procedure Log(const strMsg: string);
begin
  writeln(strMsg);
end;

end.
