unit GenJSON_Writer;

// EMS Resource Module

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  EMS.Services, EMS.ResourceAPI, EMS.ResourceTypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.ConsoleUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Comp.BatchMove.JSON, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  [ResourceName('employee')]
  TEmployeeResource1 = class(TDataModule)
    EmployeeConnection: TFDConnection;
    EmployeeTable: TFDQuery;
    FDBatchMoveJSONWriter1: TFDBatchMoveJSONWriter;
    FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader;
    FDBatchMove1: TFDBatchMove;
  published
    procedure Get(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TEmployeeResource1.Get(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
begin
//  AResponse.Body.JSONWriter.WriteStartObject;
//  AResponse.Body.JSONWriter.WritePropertyName('Test');
//  AResponse.Body.JSONWriter.WriteValue('Foo bar');
//  AResponse.Body.JSONWriter.WriteEndObject;

  FDBatchMoveJSONWriter1.JsonWriter := AResponse.Body.JSONWriter;
  FDBatchMove1.Execute;
end;


procedure Register;
begin
  RegisterResource(TypeInfo(TEmployeeResource1));
end;

initialization
  Register;
end.


