unit NewLedDemoForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  StyledLedComponent, FMX.Objects, LedComponent;

type
  TForm25 = class(TForm)
    CntLed1: TCntLed;
    CntStyledLed1: TCntStyledLed;
    StyleBook1: TStyleBook;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

{$R *.fmx}

end.
