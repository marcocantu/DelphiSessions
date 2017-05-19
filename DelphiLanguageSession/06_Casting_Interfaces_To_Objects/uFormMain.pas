unit uFormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm14 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses uMyDataModule, uIntfDataAccess;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
var aIntf: IMyDataAccess; dm: TDataModule1; x: integer;
begin
  aIntf := DataModule1;

  // aIntf.SomeOtherProc;   // <- compile error

  if aIntf is TDataModule1 then
  begin
    ShowMessage('aIntf is TDataModule1');

    dm := TDataModule1(aIntf);
    // dm := aIntf as TDataModule;

    dm.SomeOtherProc;
  end
  else
    ShowMessage('aIntf is not TDataModule1');
end;

end.
