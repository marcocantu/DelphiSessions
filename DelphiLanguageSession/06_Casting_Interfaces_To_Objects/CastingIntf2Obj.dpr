program CastingIntf2Obj;

uses
  Forms,
  uFormMain in 'uFormMain.pas' {Form14},
  uMyDataModule in 'uMyDataModule.pas' {DataModule1: TDataModule},
  uIntfDataAccess in 'uIntfDataAccess.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
