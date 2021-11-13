unit BindingExpressions_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, System.Bindings.Expression, System.Bindings.Helper,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Vcl.ComCtrls;

type
  TFormBindings = class(TForm)
    SpinEdit1: TSpinEdit;
    btnUpdateObj: TButton;
    edName: TEdit;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure btnUpdateObjClick(Sender: TObject);
  private
    BindingExpression1: TBindingExpression;
    BindingExpressionObj: TBindingExpression;
  public
    { Public declarations }
  end;

type
  TMyObject = class
  private
    FName: string;
    FValue: Integer;
    procedure SetName(const Value: string);
    procedure SetValue(const Value: Integer);
  public
    property Name: string read FName write SetName;
    property Value: Integer read FValue write SetValue;
  end;

var
  FormBindings: TFormBindings;
  myobj: TMyObject;

implementation

{$R *.dfm}

procedure TFormBindings.btnUpdateObjClick(Sender: TObject);
begin
  myobj.Name := myobj.Name + 'Monkey';
end;

procedure TFormBindings.FormCreate(Sender: TObject);
begin
  myobj := TMyObject.Create;
  myobj.Name := 'Fire';
  myobj.Value := 10;

  BindingExpression1 := TBindings.CreateManagedBinding(
    { inputs }
    [TBindings.CreateAssociationScope([
      Associate(SpinEdit1, 'spin1')
      ])],
    'spin1.Value',
    { outputs }
    [TBindings.CreateAssociationScope([
      Associate(ProgressBar1, 'progress')
      ])],
    'progress.Position',
    {OutputConverter}
    nil);

  { a binding expression that binds properties
    of the given objects }
  BindingExpressionObj := TBindings.CreateManagedBinding(
    { inputs }
    [TBindings.CreateAssociationScope([
      Associate(myobj, 'obj')
      ])],
    'obj.Name',
    { outputs }
    [TBindings.CreateAssociationScope([
      Associate(edName, 'edit')
      ])],
    'edit.Text',
    {OutputConverter}
    nil);

  BindingExpression1.Evaluate;
  BindingExpressionObj.Evaluate;
end;

procedure TFormBindings.SpinEdit1Change(Sender: TObject);
begin
  TBindings.Notify(Sender, 'Value');
end;

{ TMyObject }

procedure TMyObject.SetName(const Value: string);
begin
  FName := Value;
  TBindings.Notify(self, 'Name');
end;

procedure TMyObject.SetValue(const Value: Integer);
begin
  FValue := Value;
  TBindings.Notify(self, 'Value');
end;

end.
