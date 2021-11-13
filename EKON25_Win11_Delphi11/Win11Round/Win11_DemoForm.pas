unit Win11_DemoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Win11Forms;

type
  TForm6 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses
  System.DateUtils, Winapi.UxTheme, Winapi.Dwmapi, TitleBar_Form;

procedure TForm6.Button1Click(Sender: TObject);
begin
  ListBox1.Items.Add(Now.Format('hh:mm:ss'));
end;

procedure TForm6.ListBox2Click(Sender: TObject);
begin
  case ListBox2.ItemIndex of
    0: RoundedCorners := rcDefault;
    1: RoundedCorners := rcOff;
    2: RoundedCorners := rcOn;
    3: RoundedCorners := rcSmall;
  end;

  TitleBar_Form.Form1.RoundedCorners := self.RoundedCorners;
end;

initialization
  TForm.DefaultRoundedCorners := rcOff;

end.
