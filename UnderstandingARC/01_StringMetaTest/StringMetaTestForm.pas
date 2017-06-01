unit StringMetaTestForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Memo, FMX.Edit, FMX.Controls.Presentation, FMX.ScrollBox;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Show (const msg: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses
  Diagnostics;

{$ZEROBASEDSTRINGS ON}

var
  MyStr1, MyStr2: string;

procedure TForm1.Button1Click(Sender: TObject);
var
  str1: string;
  str2: string;
  str3: string;
begin
  str1 := 'F' + string.Create ('o', 2);

  Show ('SizeOf: ' + SizeOf (str1).ToString);
  Show ('Length: ' + str1.Length.ToString);
  Show ('StringRefCount: ' +
    StringRefCount (str1).ToString);

  str2 := str1;
  str3 := str1;

  Show ('SizeOf: ' + SizeOf (str1).ToString);
  Show ('Length: ' + str1.Length.ToString);
  Show ('StringRefCount: ' +
    StringRefCount (str1).ToString);

  str1 := str1 + 'x';

  Show ('SizeOf: ' + SizeOf (str1).ToString);
  Show ('Length: ' + str1.Length.ToString);
  Show ('StringRefCount: ' +
    StringRefCount (str1).ToString);
end;

function StringStatus (const Str: string): string;
begin
  Result := 'Addr: ' +
    IntToStr (Integer (Str)) +
    ', Len: ' +
    IntToStr (Length (Str)) +
    ', Ref: ' +
    IntToStr (PInteger (Integer (Str) - 8)^) +
    ', Val: ' + Str;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Show ('MyStr1 - ' + StringStatus (MyStr1));
  Show ('MyStr2 - ' + StringStatus (MyStr2));
  MyStr1 [1] := 'a';
  Show ('Change 2nd char');
  Show ('MyStr1 - ' + StringStatus (MyStr1));
  Show ('MyStr2 - ' + StringStatus (MyStr2));
end;

function CalcLen (str1: string): Integer;
begin
  Result := Length (str1);
end;

function CalcLenConst (const str1: string): Integer;
begin
  Result := Length (str1);
end;


procedure TForm1.Button3Click(Sender: TObject);
const
  MaxLoop = 5000000; // five million
var
  str1: string;
  I: Integer;
  total: Integer;
  t1: TStopwatch;
begin
  str1 := 'Marco ';

  total := 0;
  t1 := TStopwatch.StartNew;
  for I := 1 to MaxLoop do
    total := total + CalcLen (str1);
  t1.Stop;
  Show('Length: ' + total.ToString);
  Show('Time: ' + t1.ElapsedMilliseconds.ToString);

  total := 0;
  t1 := TStopwatch.StartNew;
  for I := 1 to MaxLoop do
    total := total + CalcLenConst (str1);
  t1.Stop;
  Show('Length: ' + total.ToString);
  Show('Time: ' + t1.ElapsedMilliseconds.ToString);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MyStr1 := string.Create(['H', 'e', 'l', 'l', 'o']);
  MyStr2 := MyStr1;
end;

procedure TForm1.Show(const Msg: string);
begin
  Memo1.Lines.Add(Msg);
end;

end.
