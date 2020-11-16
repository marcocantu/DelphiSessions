program FMStyles101;

uses
  FMX.Forms,
  FMStyles101_MainForm in 'FMStyles101_MainForm.pas' {FMStylesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMStylesForm, FMStylesForm);
  Application.Run;
end.
