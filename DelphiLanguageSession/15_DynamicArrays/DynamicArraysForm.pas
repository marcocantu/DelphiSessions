unit DynamicArraysForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormDynArray = class(TForm)
    btnArrayInit: TButton;
    btnArrayRTL: TButton;
    Memo1: TMemo;
    btnButtonsArray: TButton;
    procedure btnArrayInitClick(Sender: TObject);
    procedure btnArrayRTLClick(Sender: TObject);
    procedure btnButtonsArrayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDynArray: TFormDynArray;

implementation

{$R *.dfm}

procedure TFormDynArray.btnArrayInitClick(Sender: TObject);
var
  di: array of Integer;
  i: Integer;
begin
  di := [1, 2, 3];    // initialization
  di := di + di;      // concatenation
  di := di + [4, 5];  // mixed concatenation

  for i in di do
  begin
    Memo1.Lines.Add (i.ToString);
  end;
end;

procedure TFormDynArray.btnArrayRTLClick(Sender: TObject);
var
  di: array of Integer;
  i: Integer;
begin
  di := [1, 2, 3, 4, 5, 6];
  Insert ([8, 9], di, 4);
  Delete (di, 2, 1); // remove the third (0-based)
  for i in di do
  begin
    Memo1.Lines.Add (i.ToString);
  end;
end;

procedure TFormDynArray.btnButtonsArrayClick(Sender: TObject);
var
  buttons: array of TButton;
  aButton: TButton;
begin
  buttons := [btnArrayInit, btnArrayRTL, btnButtonsArray];
  for aButton in buttons do
  begin
    aButton.Caption := aButton.Caption + '*';
  end;

  buttons := buttons + [TButton.Create(self)];
end;

end.
