unit PlatformDialog_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm41 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form41: TForm41;

implementation

{$R *.fmx}

uses
  FMX.DialogService, FMX.Clipboard, FMX.Platform;

const
  AMessage = 'Do you want this?';

procedure TForm41.Button1Click(Sender: TObject);
var
  lResultStr: string;
begin
  TDialogService.PreferredMode:=TDialogService.TPreferredMode.Platform;

  TDialogService.MessageDialog(AMessage, TMsgDlgType.mtConfirmation,
    FMX.Dialogs.mbYesNo, TMsgDlgBtn.mbNo, 0,
    procedure(const AResult: TModalResult)
    begin
      case AResult of
        mrYes: lResultStr:='Y';
        mrNo:  lResultStr:='N';
      end;
    end);
  Button1.Text := lResultStr; // sync only!
end;

procedure TForm41.Button2Click(Sender: TObject);
var
  ClipboardService: IFMXExtendedClipboardService;
begin
  if TPlatformServices.Current.SupportsPlatformService(
    IFMXExtendedClipboardService, ClipboardService) then
  begin
    if ClipboardService.HasText then
      ShowMessage (ClipboardService.GetText)
    else
      ShowMessage ('Not text');
  end;
end;

end.
