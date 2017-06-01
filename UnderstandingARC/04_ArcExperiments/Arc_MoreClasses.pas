unit Arc_MoreClasses;

interface

type
  TMyComplexClass = class;

  TMyLittleClass = class
  private
    [Weak] FOwnedBy: TMyComplexClass;
  public
    constructor Create();
    destructor Destroy (); override;
    procedure DoSomething(bRaise: Boolean = False);
  end;

  TMyComplexClass = class
  private
    fLittle: TMyLittleClass;
  public
    constructor Create();
    destructor Destroy (); override;
    class procedure CreateOnly;
  end;

  TMyWeakRef = class
  private
    [weak] fLittle: TMyLittleClass;
    //function GetLittle: TMyLittleClass;
  public
    constructor Create (aLittle: TMyLittleClass);
    property Little: TMyLittleClass read fLittle;
  end;


implementation

uses
  ARcExperiments_Classes, SysUtils;

{ TMyLittleClass }

constructor TMyLittleClass.Create;
begin
  Log ('Little class created');
end;

destructor TMyLittleClass.Destroy;
begin
  Log ('Little class destroyed');
  inherited;
end;

procedure TMyLittleClass.DoSomething(bRaise: Boolean);
begin
  Log ('Little class doing something');
  if bRaise then
    raise Exception.Create('Error Message');
end;

{ TMyComplexClass }

constructor TMyComplexClass.Create;
begin
  inherited Create;
  Log ('Complex class created');
  fLittle := TMyLittleClass.Create;
  fLittle.FOwnedBy := self;
end;

class procedure TMyComplexClass.CreateOnly;
var
  MyComplex: TMyComplexClass;
  MyWeak: TMyWeakRef;
begin
  MyComplex := TMyComplexClass.Create;
  MyComplex.fLittle.DoSomething (False);

  MyWeak := TMyWeakRef.Create (
    MyComplex.fLittle);

  if Assigned (MyWeak.Little) then
    MyWeak.Little.DoSomething(False)
  else
    Log ('MyWeak.Little is gone');

  MyComplex := nil;

  if Assigned (MyWeak.Little) then
    MyWeak.Little.DoSomething(False)
  else
    Log ('MyWeak.Little is gone');
end;

destructor TMyComplexClass.Destroy;
begin
  Log ('Complex class destroyed');
  inherited;
end;

{ TMyWeakRef }

constructor TMyWeakRef.Create(aLittle: TMyLittleClass);
begin
  fLittle := aLittle;
end;

//function TMyWeakRef.GetLittle: TMyLittleClass;
//var
//  TheLittle: TMyLittleClass;
//begin
//  TheLittle := fLittle;
//  if TheLittle <> nil then
//    Log('Using ' + TheLittle.ClassName) // safe to use
//  else
//    Log('Weak is gone!');
//end;

end.
