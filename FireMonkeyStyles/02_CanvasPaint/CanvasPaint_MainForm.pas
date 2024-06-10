unit CanvasPaint_MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Graphics, FMX.Forms, FMX.Dialogs, FMX.Objects, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TCanvasPaintForm = class(TForm)
    PaintBox1: TPaintBox;
    Label1: TLabel;
    Button1: TButton;
    procedure PaintBox1Paint(Sender: TObject; Canvas: TCanvas);
    procedure Label1Paint(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CanvasPaintForm: TCanvasPaintForm;

implementation

{$R *.fmx}

uses
  System.UIConsts;

procedure TCanvasPaintForm.Button1Click(Sender: TObject);
begin
  Button1.Opacity := Button1.Opacity - 0.2;
end;

procedure TCanvasPaintForm.Label1Paint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  Label1.Canvas.Stroke.Color := claBlueviolet;
  Label1.Canvas.Stroke.Kind := TBrushKind.Solid;
  Label1.Canvas.DrawRect(
    RectF(100, 10, 320, 120),
    20, 20, [TCorner.BottomLeft, TCorner.TopRight], 1);
end;

procedure TCanvasPaintForm.PaintBox1Paint(Sender: TObject; Canvas: TCanvas);
begin
  PaintBox1.Canvas.Stroke.Color := claBlueviolet;
  PaintBox1.Canvas.Stroke.Kind := TBrushKind.Solid;
  PaintBox1.Canvas.DrawRect(
    RectF(100, 10, 280, 120),
    20, 20, [TCorner.BottomLeft, TCorner.TopRight], // rounded corners
    1); // opacity

  PaintBox1.Canvas.Fill.Kind := TBrushKind.Gradient;
  PaintBox1.Canvas.Fill.Gradient.Color := claRoyalblue;
  PaintBox1.Canvas.Fill.Gradient.Color1 := claRed;
  PaintBox1.Canvas.FillRect(
    RectF(200, 10, 580, 120),
    0, 0, [], 0.6); // no rounded corners and partial opacity
end;

end.
