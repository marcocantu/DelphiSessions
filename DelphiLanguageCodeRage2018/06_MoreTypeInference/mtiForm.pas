unit mtiForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm15 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses
  System.TypInfo, System.RTTI;

procedure TForm15.Button1Click(Sender: TObject);
begin

  // anonyous method
  var proc1 := procedure (n: Integer)
  begin
    ShowMessage (n.ToString);
  end;
  proc1(Left);

  // event handler
  var evt := Button2.OnClick;
  evt (Sender);

  // dynamic array of objects
  var list1 := [self, Sender as TComponent];
  ShowMessage (list1[0].Name);

end;

procedure TForm15.Button2Click(Sender: TObject);
begin
  ShowMessage ('btn2 showing ' +
    (Sender as TComponent).Name);
end;

procedure TForm15.Button3Click(Sender: TObject);
begin
  var obj1 := Sender;
  var obj2 := TStringList.Create;
  var Obj3 := self;

  ShowMessage (
    obj1.ClassName + sLineBreak +
    obj2.ClassName + sLineBreak +
    obj3.ClassName + sLineBreak);

  obj2.Free;
end;

end.
