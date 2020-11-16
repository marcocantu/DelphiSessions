unit ek24rs_datamodule;

// EMS Resource Module

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  EMS.Services, EMS.ResourceAPI, EMS.ResourceTypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.ConsoleUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  EMS.DataSetResource, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  [ResourceName('ekon24')]
  TEkonResource1 = class(TDataModule)
    FDConnection1: TFDConnection;
    qryEMPLOYEE: TFDQuery;
    [ResourceSuffix('EMPLOYEE')]
    dsrEMPLOYEE: TEMSDataSetResource;
    EmployeeConnectionWin: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);

  published
    procedure Get(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
    [ResourceSuffix('{item}')]
    procedure GetItem(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TEkonResource1.DataModuleCreate(Sender: TObject);
begin
//{$IFDEF LINUX}
//    FDConnection1.Params.Database := '/opt/interbase/examples/employee.gdb';
//{$ENDIF}

{$IFDEF WINDOWS}
  qryEMPLOYEE.Connection := FDConnection1;
{$ENDIF}
end;

procedure TEkonResource1.Get(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
begin
  // Sample code
  AResponse.Body.SetValue(TJSONString.Create('ekon24'), True)
end;

procedure TEkonResource1.GetItem(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
var
  LItem: string;
begin
  LItem := ARequest.Params.Values['item'];
  // Sample code
  AResponse.Body.SetValue(TJSONString.Create('ekon24 ' + LItem), True)
end;

procedure Register;
begin
  RegisterResource(TypeInfo(TEkonResource1));
end;

initialization
  Register;
end.


