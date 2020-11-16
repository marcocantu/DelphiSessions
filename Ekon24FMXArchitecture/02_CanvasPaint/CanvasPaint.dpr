program CanvasPaint;

uses
  FMX.Forms,
  CanvasPaint_MainForm in 'CanvasPaint_MainForm.pas' {CanvasPaintForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCanvasPaintForm, CanvasPaintForm);
  Application.Run;
end.
