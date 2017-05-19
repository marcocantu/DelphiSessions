program DynamicArraysVCL;

uses
  Vcl.Forms,
  DynamicArraysForm in 'DynamicArraysForm.pas' {FormDynArray};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormDynArray, FormDynArray);
  Application.Run;
end.
