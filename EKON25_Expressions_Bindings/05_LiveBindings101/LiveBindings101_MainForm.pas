unit LiveBindings101_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.Samples.Bind.Editors, Data.Bind.Components, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.NumberBox;

type
  TForm3 = class(TForm)
    BindingsList1: TBindingsList;
    Shape1: TShape;
    ColorBox1: TColorBox;
    LinkControlToPropertyBrushColor: TLinkControlToProperty;
    NumberBox1: TNumberBox;
    ProgressBar1: TProgressBar;
    LinkControlToPropertyPosition: TLinkControlToProperty;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  System.Bindings.Helper;

{$R *.dfm}

procedure TForm3.Edit1Change(Sender: TObject);
begin
  TBindings.Notify(Sender, 'Text');
end;

end.
