unit mainformu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Data.Bind.Components, Vcl.StdCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, converteru;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DollarsEdit: TEdit;
    EurosEdit: TEdit;
    BindingsList1: TBindingsList;
    BindExprItemsDollarsEdit1: TBindExprItems;
    procedure OnChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    { Public declarations }
    Converter: TConvertor;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Converter := TConvertor.Create(Self);
end;

procedure TForm1.OnChange(Sender: TObject);
begin
  BindingsList1.Notify(Sender, '');
end;

end.
