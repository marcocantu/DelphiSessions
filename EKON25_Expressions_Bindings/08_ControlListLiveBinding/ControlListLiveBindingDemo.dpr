program ControlListLiveBindingDemo;

uses
  Vcl.Forms,
  ControlListLiveBindingUnit1 in 'ControlListLiveBindingUnit1.pas' {frmCtrlListDemo3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCtrlListDemo3, frmCtrlListDemo3);
  Application.Run;
end.
