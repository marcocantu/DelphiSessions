unit WeakIntfRef_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

type
  ISimpleInterface = interface
    procedure DoSomething;
    procedure AddObjectRef (simple: ISimpleInterface);
  end;

  TObjectOne = class (TInterfacedObject, ISimpleInterface)
  private
    [weak]
    anotherObj: ISimpleInterface;
  public
    procedure DoSomething;
    procedure AddObjectRef (simple: ISimpleInterface);
  end;

procedure TForm3.Button1Click(Sender: TObject);
var
  one, two: ISimpleInterface;
begin
  one := TObjectOne.Create;
  two := TObjectOne.Create;
  one.DoSomething;

  one.AddObjectRef (two);
  two.AddObjectRef (one);

  one.DoSomething;
  // cross ref keeps ref count +1
end;

{ TObjectOne }

procedure TObjectOne.AddObjectRef(simple: ISimpleInterface);
begin
  anotherObj := simple;
end;

procedure TObjectOne.DoSomething;
begin
  ShowMessage ('Something has refcount = ' + Self.RefCount.ToString);
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  //[unsafe]
  one: ISimpleInterface;
begin
  one := TObjectOne.Create;
  one.DoSomething;
  // leak if not freed
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
