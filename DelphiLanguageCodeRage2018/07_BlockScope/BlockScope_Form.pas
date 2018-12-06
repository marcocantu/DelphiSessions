unit BlockScope_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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

procedure Log (const strMessage: string);

implementation

{$R *.dfm}

uses
  SmartPointerClass;

procedure Log (const strMessage: string);
begin
  if Assigned (Form3) and Assigned (Form3.Memo1) then
    Form3.Memo1.Lines.Add(strMessage);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Log ('Here');

  begin
    var sl:= TStringList.Create;
    var sp := TSmartPointer <TStringList>.Create (sl);
    sl.Add ('hello');
    Log ('Items = ' + sl.Count.ToString);
  end;

  Log ('There');
end;

end.
