unit BindingsExpr_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components;

type
  TForm1 = class(TForm)
    MemoExpr: TMemo;
    btnEval: TButton;
    MemoOut: TMemo;
    procedure btnEvalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPerson = class
  private
    FName: string;
    FAge: Integer;
    procedure SetAge(const Value: Integer);
    procedure SetName(const Value: string);
  public
    property Name: string read FName write SetName;
    property Age: Integer read FAge write SetAge;
  end;

  TMyFunct = class
  public
    function Double (I: Integer): Integer;
    function ToStr (I: Integer): string;
    procedure Beep;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  System.Bindings.Expression, System.Bindings.Helper,
  System.Bindings.ExpressionDefaults;

procedure TForm1.btnEvalClick(Sender: TObject);
var
  bindExpr: TBindingExpression;
  pers: TPerson;
  myFunct: TMyFunct;
begin
  pers := TPerson.Create;
  pers.Name := 'John';
  pers.Age := 33;

  myFunct := TMyFunct.Create;

  bindExpr := TBindingExpressionDefault.Create;
  bindExpr.Source := MemoExpr.Lines.Text;
  BindExpr.Compile([
    TBindingAssociation.Create(pers, 'person'),
    TBindingAssociation.Create(myFunct, 'fn')
    ]);
  MemoOut.Lines.Add (
    BindExpr.Evaluate.GetValue.ToString);

  pers.Free;
  myFunct.Free;
  bindExpr.Free;
end;

{ TPerson }

procedure TPerson.SetAge(const Value: Integer);
begin
  FAge := Value;
end;

procedure TPerson.SetName(const Value: string);
begin
  FName := Value;
end;

{ TMyFunct }

procedure TMyFunct.Beep;
begin
  System.SysUtils.Beep;
end;

function TMyFunct.Double(I: Integer): Integer;
begin
  Result := I * 2;
end;

function TMyFunct.ToStr(I: Integer): string;
begin
  Result := IntToStr (I);
end;

end.
