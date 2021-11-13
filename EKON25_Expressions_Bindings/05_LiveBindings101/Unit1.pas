unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.NumberBox, Vcl.Samples.Bind.Editors,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    NumberBox1: TNumberBox;
    ProgressBar1: TProgressBar;
    BindingsList1: TBindingsList;
    LinkControlToPropertyPosition: TLinkControlToProperty;
    SpinEdit1: TSpinEdit;
    ProgressBar2: TProgressBar;
    LinkControlToPropertyPosition2: TLinkControlToProperty;
    procedure NumberBox1ChangeValue(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  System.Bindings.Helper;

procedure TForm1.NumberBox1ChangeValue(Sender: TObject);
begin
  TBindings.Notify(Sender, 'Value');
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  TBindings.Notify(Sender, 'Value');

end;

end.
