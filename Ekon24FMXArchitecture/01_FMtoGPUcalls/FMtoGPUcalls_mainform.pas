unit FMtoGPUcalls_mainform;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Graphics;

type
  TFormFMtoGPU = class(TForm)
    procedure FormPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFMtoGPU: TFormFMtoGPU;

implementation

{$R *.fmx}

procedure TFormFMtoGPU.FormPaint(Sender: TObject;
  Canvas: TCanvas; const ARect: TRectF);
begin
  Canvas.Fill.Color := TAlphaColorRec.Blue;
  Canvas.Font.Size := Height div 3;
  Canvas.FillText (
    ARect, Canvas.ClassName, True, 1,
    [], TTextAlign.taCenter);
end;

initialization
  // GlobalUseDirect2D := False;
  // GlobalUseGPUCanvas := True;
  // GlobalUseMetal := True;


end.
