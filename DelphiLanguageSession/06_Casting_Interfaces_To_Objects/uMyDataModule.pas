unit uMyDataModule;

interface

uses
  SysUtils, Classes, uIntfDataAccess;

type
  TDataModule1 = class(TDataModule, IMyDataAccess)
  private
    { Private declarations }
  public

    procedure SomeOtherProc;

    // IMyDataAccess
    function GetRecordCount: integer;
  end;

var
  DataModule1: TDataModule1;

implementation

uses Dialogs;

{$R *.dfm}

{ TDataModule1 }

function TDataModule1.GetRecordCount: integer;
begin
  Result := 10; // ... or whatever
end;

procedure TDataModule1.SomeOtherProc;
begin
  ShowMessage('I''m some other proc');
end;

end.
