program SystemMetrics;

uses
  Vcl.Forms,
  SystemMetricsForm in 'SystemMetricsForm.pas' {frmSystemMetrics};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSystemMetrics, frmSystemMetrics);
  Application.Run;
end.
