unit ClientForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IPPeerClient,
  REST.Backend.ServiceTypes, System.JSON, REST.Backend.EMSServices,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client,
  REST.Backend.EndPoint, REST.Backend.EMSProvider, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, REST.Backend.MetaTypes,
  REST.Backend.BindSource, REST.Backend.ServiceComponents;

type
  TForm13 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    EMSProvider1: TEMSProvider;
    BackendEndpoint1: TBackendEndpoint;
    BackendEndpoint2: TBackendEndpoint;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    BackendAuth1: TBackendAuth;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.fmx}

procedure TForm13.Button1Click(Sender: TObject);
begin
  BackendEndpoint1.Execute;
  Label1.Text := BackendEndpoint1.Response.JSONValue.ToString
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
  BackendEndpoint2.ResourceSuffix := Edit1.Text;
  BackendEndpoint2.Execute;
  Label2.Text := BackendEndpoint2.Response.JSONValue.ToString
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
  BackendAuth1.Login;
  if BackendAuth1.LoggedIn then
    ShowMessage ('Logged in');
end;

end.
