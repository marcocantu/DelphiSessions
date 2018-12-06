unit InlineVarsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm15 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses
  Generics.Collections;

{$R *.dfm}

procedure Test;
var
  I: Integer;
begin
  I := 22;
  ShowMessage (I.ToString);
end;









procedure Test2;
begin
  var I, J: Integer;
  I := 22;
  j := I + 20;
  ShowMessage (J.ToString);
end;









procedure Test3; // declaration and initialization in a single statement
begin
  var I: Integer := 22;
  ShowMessage (I.ToString);
end;









procedure Test4; // multiple inline declarations (symbols declared when used)
begin
  var I: Integer := 22;
  var J: Integer := 22 + I;
  var K: Integer := I + J;
  ShowMessage (K.ToString);
end;









procedure Test5; // scope limited to local block
begin
  var I: Integer := 22;
  if I > 10 then
  begin
    var J: Integer := 3;
    ShowMessage (J.ToString);
  end
  else
  begin
    var K: Integer := 3;
    // ShowMessage (J.ToString); // COMPILER ERROR: "Undeclared identifier: J"
  end;
  // J and K not accessible here
end;









procedure Test6; // type inference
begin
  var I := 22;
  ShowMessage (I.ToString);
end;









procedure Test7; // generic types inference
begin
  var MyDictionary := TDictionary <string, Integer>.Create;
  MyDictionary.Add ('one', 1);
  var APair := MyDictionary.ExtractPair('one');
  ShowMessage (APair.Value.ToString);
  MyDictionary.Free;
end;









procedure Test8;
begin
  // const M: Integer = (L + H) div 2; // single identifier, with type specifier
end;









procedure ForTest;
begin
  var total := 0;
  for var I := 1 to 10 do
    Inc (Total, I);
  ShowMessage (total.ToString);
  // ShowMessage (I.ToString); // compiler error: Undeclared Identifier ‘I’
end;



end.
