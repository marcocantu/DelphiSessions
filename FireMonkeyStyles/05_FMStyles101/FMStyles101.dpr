program FMStyles101;

uses
  FMX.Forms,
  FMX.Skia,
  FMStyles101_MainForm in 'FMStyles101_MainForm.pas' {FMStylesForm};

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TFMStylesForm, FMStylesForm);
  Application.Run;
end.
