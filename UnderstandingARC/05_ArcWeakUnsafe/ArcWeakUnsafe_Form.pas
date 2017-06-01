unit ArcWeakUnsafe_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox,
  FMX.Memo, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm25 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Show(const msg: string);
  end;

var
  Form25: TForm25;

implementation

{$R *.fmx}

type
  TMyClass = class
    someData: Integer;
  end;

procedure TForm25.Button2Click(Sender: TObject);
var
  myObj: TMyClass;
  [unsafe] myObjU: TMyClass;
begin
  myObj := TMyClass.Create;
  myObj.someData := 20;
  Show(myObj.someData.ToString);
  // free is automatic

  myObjU := TMyClass.Create;
  try
    myObjU.someData := 10;
    Show(myObjU.someData.ToString);
  finally
    myObjU.Free;
  end;

end;

procedure TForm25.Show(const msg: string);
begin
  Memo1.Lines.Add(msg);
end;

procedure TForm25.Button1Click(Sender: TObject);
var
  myObj: TMyClass;
  myObj2: TMyClass;
  [weak] myObjW: TMyClass;
  [unsafe] myObjU: TMyClass;
begin
  myObj := TMyClass.Create;
  Show(myObj.RefCount.ToString);
  myObj2 := myObj;
  Show(myObj.RefCount.ToString);
  myObjW := myObj;
  Show(myObj.RefCount.ToString);
  myObjU := myObj;
  Show(myObj.RefCount.ToString);

  myObj2 := nil;
  myObj := nil; // fres the object

  Show(Integer(Pointer (myObjW)).ToString);
  Show(Integer(Pointer (myObjU)).ToString);
end;

end.
