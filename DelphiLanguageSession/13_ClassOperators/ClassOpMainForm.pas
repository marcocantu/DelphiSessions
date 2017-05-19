unit ClassOpMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Layouts, FMX.Memo,
  FMX.StdCtrls, FMX.ScrollBox, FMX.Controls.Presentation;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

type
  TNumber = class (TObject)
  private
    FValue: Integer;
    procedure SetValue(const Value: Integer);
  public
    property Value: Integer read FValue write SetValue;
    class operator Add (a, b: TNumber): TNumber;
    class operator Implicit (n: TNumber): Integer;
  end;

procedure TForm3.Button1Click(Sender: TObject);
var
  a, b, c: TNumber;
begin
  a := TNumber.Create;
  a.Value := 10;

  b := TNumber.Create;
  b.Value := 20;

  c := a + b;

  ShowMessage (IntToStr (c));
end;

{ TNumber }

class operator TNumber.Add(a, b: TNumber): TNumber;
begin
  Result := TNumber.Create;
  Result.Value := a.Value + b.Value;
end;

class operator TNumber.Implicit (n: TNumber): Integer;
begin
  Result := n.Value;
end;

procedure TNumber.SetValue(const Value: Integer);
begin
  FValue := Value;
end;

end.
