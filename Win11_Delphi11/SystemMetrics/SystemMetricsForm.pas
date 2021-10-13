unit SystemMetricsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmSystemMetrics = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnRefresh: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSystemMetrics: TfrmSystemMetrics;

implementation

{$R *.dfm}

procedure TfrmSystemMetrics.btnRefreshClick(Sender: TObject);
begin
  Label2.Caption := 'Current: ' +
    GetSystemMetrics (SM_CXVSCROLL).ToString;
end;

procedure TfrmSystemMetrics.FormCreate(Sender: TObject);
begin
  Label1.Caption := 'Initial: ' +
    GetSystemMetrics (SM_CXVSCROLL).ToString;
  Label2.Caption := 'Current: ' +
    GetSystemMetrics (SM_CXVSCROLL).ToString;
end;

end.
