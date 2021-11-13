unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.VirtualImage, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    VirtualImage1: TVirtualImage;
    ImageCollection1: TImageCollection;
    Panel1: TPanel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormAfterMonitorDpiChanged(Sender: TObject; OldDPI,
      NewDPI: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  VirtualImage1.Proportional := CheckBox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  VirtualImage1.Center := CheckBox2.Checked;
end;

procedure TForm1.FormAfterMonitorDpiChanged(Sender: TObject; OldDPI,
  NewDPI: Integer);
begin
  Form1.Caption := 'TVirtualImage - Demo - DPI: ' + IntToStr(Round(Form1.ScaleFactor * 100)) + '%';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Caption := 'TVirtualImage - Demo - DPI: ' + IntToStr(Round(Form1.ScaleFactor * 100)) + '%';
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  VirtualImage1.ImageWidth := SpinEdit1.Value;
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  VirtualImage1.ImageHeight := SpinEdit2.Value;
end;

end.
