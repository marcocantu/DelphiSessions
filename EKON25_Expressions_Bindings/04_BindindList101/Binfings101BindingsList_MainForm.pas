unit Binfings101BindingsList_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, System.Bindings.Expression, System.Bindings.Helper,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Vcl.ComCtrls, Vcl.Samples.Bind.Editors;

type
  TFormBindings = class(TForm)
    BindingsList1: TBindingsList;
    Edit1: TEdit;
    Edit2: TEdit;
    BindExprItemsEdits: TBindExprItems;
    ProgressBar1: TProgressBar;
    BindExpression1: TBindExpression;
    SpinEdit1: TSpinEdit;
    procedure SpinEdit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FormBindings: TFormBindings;

implementation

{$R *.dfm}

procedure TFormBindings.Edit1Change(Sender: TObject);
begin
  TBindings.Notify(Sender, '');
end;

procedure TFormBindings.SpinEdit2Change(Sender: TObject);
begin
  TBindings.Notify(Sender, '');
end;

end.
