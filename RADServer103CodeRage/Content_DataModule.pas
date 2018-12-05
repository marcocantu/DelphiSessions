unit Content_DataModule;

// EMS Resource Module

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  EMS.Services, EMS.ResourceAPI, EMS.ResourceTypes;

type
  [ResourceName('content')]
  TContentResource1 = class(TDataModule)
  published
    [ResourceSuffix ('*')]
    [EndpointProduce ('image/jpeg')]
    procedure GetImage(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);

    [ResourceSuffix ('*')]
    [EndpointProduce ('application/xml')]
    procedure GetText(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);

//    [ResourceSuffix ('*')]
//    [EndpointProduce ('application/pdf')]
//    procedure GetPDF(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}


procedure Register;
begin
  RegisterResource(TypeInfo(TContentResource1));
end;

{ TContentResource1 }

procedure TContentResource1.GetImage(const AContext: TEndpointContext;
  const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
var
  fs: TFileStream;
begin
  fs := TFileStream.Create('c:\temp\content.jpeg', fmOpenRead);
  AResponse.Body.SetStream(fs, 'image/jpeg', True);
end;

procedure TContentResource1.GetText(const AContext: TEndpointContext;
  const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
var
  fs: TFileStream;
begin
  fs := TFileStream.Create('c:\temp\content.txt', fmOpenRead);
  AResponse.Body.SetStream(fs, 'text/plain', True);
end;

//procedure TContentResource1.GetPDF(const AContext: TEndpointContext;
//  const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
//var
//  fs: TFileStream;
//begin
//  fs := TFileStream.Create('c:\temp\content.pdf', fmOpenRead);
//  AResponse.Body.SetStream(fs, 'application/pdf', True);
//end;

initialization
  Register;
end.


