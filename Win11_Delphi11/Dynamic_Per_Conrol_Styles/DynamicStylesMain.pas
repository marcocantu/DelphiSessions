unit DynamicStylesMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Grids, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    ListBox2: TListBox;
    ComboBox1: TComboBox;
    ScrollBar1: TScrollBar;
    BitBtn1: TBitBtn;
    MaskEdit1: TMaskEdit;
    StringGrid1: TStringGrid;
    ToggleSwitch1: TToggleSwitch;
    SearchBox1: TSearchBox;
    StatusBar1: TStatusBar;
    DateTimePicker1: TDateTimePicker;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    CheckBox2: TCheckBox;
    BitBtn3: TBitBtn;
    Timer1: TTimer;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    procedure ListBox1Click(Sender: TObject);
    procedure Button1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Button1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeRandom;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Vcl.Themes;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  for var i := 0 to Panel1.ControlCount-1 do
    Panel1.Controls[i].StyleName := '';
  CheckBox2.Checked := false;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  ChangeRandom;
end;

procedure TForm1.Button1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if (Source = ListBox1) and (ListBox1.ItemIndex > -1) then
      (Sender as TControl).StyleName :=
        ListBox1.Items[ListBox1.ItemIndex];
end;

procedure TForm1.Button1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = ListBox1) and (ListBox1.ItemIndex > -1);
end;

procedure TForm1.ChangeRandom;
begin
  ListBox1.ItemIndex := Random(ListBox1.Items.Count);
  Panel1.Controls[Random(Panel1.ControlCount)].StyleName :=
    ListBox1.Items[ListBox1.ItemIndex];
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ListBox1.Items.Clear;
  ListBox1.Items.AddStrings(TStyleManager.StyleNames);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
  begin
    ListBox1.StyleName := ListBox1.Items[ListBox1.ItemIndex];
  end;
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
  begin
    Self.StyleName := ListBox1.Items[ListBox1.ItemIndex];
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.StepIt;
  if CheckBox2.Checked then
    ChangeRandom;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Timer1.Interval := TrackBar1.Position;
end;

end.
