program FMtoGPUcalls;

uses
  FMX.Forms, FMX.Types,
  FMtoGPUcalls_mainform in 'FMtoGPUcalls_mainform.pas' {FormFMtoGPU};

{$R *.res}

begin
  // FMX.Types.GlobalUseGPUCanvas := True;
  // FMX.Types.GlobalUseDirect2D := False;
  Application.Initialize;
  Application.CreateForm(TFormFMtoGPU, FormFMtoGPU);
  Application.Run;
end.
