unit SimpleClient_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  REST.Backend.EMSProvider, REST.Backend.ServiceTypes, System.JSON,
  REST.Backend.EMSServices, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FMX.Controls.Presentation, FMX.StdCtrls, REST.Client,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Backend.EMSFireDAC,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Backend.EndPoint,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Edit;

type
  TForm41 = class(TForm)
    EMSProvider1: TEMSProvider;
    BackendEndpoint1: TBackendEndpoint;
    RESTResponse1: TRESTResponse;
    BtnInvoke: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure BtnInvokeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form41: TForm41;

implementation

{$R *.fmx}

procedure TForm41.BtnInvokeClick(Sender: TObject);
begin
  EMSProvider1.URLHost := Edit1.Text;
  EMSProvider1.URLPort := StrToIntDef (Edit2.Text, 8080);
  BackendEndpoint1.Execute;
  Memo1.Lines.Add (RESTResponse1.Content);
end;

end.
