unit ExternalDslMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm39 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Memo2: TMemo;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    procedure ProcessLine(strLine: string; bTrack: Boolean = True);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form39: TForm39;

implementation

uses
  Rtti, EdslScripting;

{$R *.dfm}

procedure TForm39.Button1Click(Sender: TObject);
begin
  // load script
  if OpenDialog1.Execute then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm39.Button2Click(Sender: TObject);
var
  str1: string;
begin
  for str1 in Memo1.Lines do
    ProcessLine (str1, False);
end;

procedure TForm39.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  // grab current line on Enter
  if Key = #13 then
  begin
    ProcessLine (Edit1.Text);
    Edit1.Text := '';
    Key := #0;
  end;
end;

procedure TForm39.ProcessLine (strLine: string; bTrack: Boolean);
var
  result: TValue;
begin
  if bTrack then
    Memo1.Lines.Add (strLine);
  result := Evaluate(strLine);
  Memo2.Lines.Add (result.ToString);
end;

end.
