unit ButtonStyleForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TForm25 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    StyleBook1: TStyleBook;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

{$R *.fmx}

procedure TForm25.Button2Click(Sender: TObject);
begin
  Button2.StyleLookup := 'Button1Style1';
  Button2.ApplyStyleLookup;
end;

end.
