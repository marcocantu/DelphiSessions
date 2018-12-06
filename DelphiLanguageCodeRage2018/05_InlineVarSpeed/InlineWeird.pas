unit InlineWeird;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm15 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  System.Diagnostics;

function SpeedOld (n: Integer): Integer;
var
  s: string;
begin
  if n >= 0 then
  begin
    s := 'Positive ' + IntToStr (n);
    Result := S.Length;
  end
  else
    Result := 0;
end;

function SpeedNew (n: Integer): Integer;
begin
  if n >= 0 then
  begin
    var s := 'Positive' + IntToStr (n);
    Result := S.Length;
  end
  else
    Result := 0;
end;

const Cycles = 100000000;  // hundred million

procedure TForm15.Button1Click(Sender: TObject);
begin
  var sw := TStopWatch.Create;
  var Total: Int64 := 0;

  sw.Start;
  for var i := 1 to Cycles  do
  begin
    Total := Total + SpeedOld (Random (1000) - 500);
  end;
  sw.Stop;

  Memo1.Lines.Add (sw.ElapsedMilliseconds.ToString);
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
  var sw := TStopWatch.Create;
  var Total: Int64 := 0;

  sw.Start;
  for var i := 1 to Cycles  do
  begin
    Total := Total + SpeedNew (Random (1000) - 500);
  end;
  sw.Stop;

  Memo1.Lines.Add (sw.ElapsedMilliseconds.ToString);

end;

end.
