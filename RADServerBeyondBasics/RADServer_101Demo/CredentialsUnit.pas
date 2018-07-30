unit CredentialsUnit;

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  EMS.Services, EMS.ResourceAPI,
  EMS.ResourceTypes;

type

  {$METHODINFO ON}

  [ResourceName('CustomLogin')]
  TCustomLogonResource = class
  public
    [EndpointName('CustomLoginUser')]
    // Declare endpoint that matches signature of Users.LoginUser
    [ResourceSuffix('login')]
    procedure PostLogin(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
  end;

  {$METHODINFO OFF}

implementation

{ TCustomLogonResource }

procedure TCustomLogonResource.PostLogin(const AContext: TEndpointContext;
  const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
var
  LEMSAPI: TEMSInternalAPI;
  LResponse: IEMSResourceResponseContent;
  LValue: TJSONValue;
  LUserName: string;
  LPassword: string;
begin
  // Create in-process EMS API
  LEMSAPI := TEMSInternalAPI.Create(AContext);
  try
    // Extract credentials from request
    if not (ARequest.Body.TryGetValue(LValue) and
      LValue.TryGetValue<string>(TEMSInternalAPI.TJSONNames.UserName, LUserName) and
      LValue.TryGetValue<string>(TEMSInternalAPI.TJSONNames.Password, LPassword)) then
      AResponse.RaiseBadRequest('', 'Missing credentials');

    // ValidateCredentials
    if (LUserName = LPassword) then
      EEMSHTTPError.RaiseUnauthorized('', 'Wrong password here');

    LResponse := LEMSAPI.LoginUser(LUserName, LPassword);
    if LResponse.TryGetValue(LValue) then
      AResponse.Body.SetValue(LValue, False);
  finally
    LEMSAPI.Free;
  end;

end;

procedure Register;
begin
  RegisterResource(TypeInfo(TCustomLogonResource));
end;

initialization
  Register;

end.
