unit LedDemo_MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Objects, LedComponent,
  StyledLedComponent;

type
  TLedDemoForm = class(TForm)
    CntLed1: TCntLed;
    StyleBook1: TStyleBook;
    CntStyledLed1: TCntStyledLed;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LedDemoForm: TLedDemoForm;

implementation

{$R *.fmx}

end.
