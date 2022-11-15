unit WeatherClient_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TForm13 = class(TForm)
    BtnRefresh: TButton;
    EditCurrent: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    EditLocation: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure BtnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.fmx}

uses WeatherClient_Module;

procedure TForm13.BtnRefreshClick(Sender: TObject);
begin
  // DataModule14.RESTRequest1.Params[1].Value := EditLocation.Text;
  DataModule14.RESTRequest1.Execute();
  // EditCurrent.Text := DataModule14.FDMemTable1.FieldByName('temperature').AsString;
end;

end.
