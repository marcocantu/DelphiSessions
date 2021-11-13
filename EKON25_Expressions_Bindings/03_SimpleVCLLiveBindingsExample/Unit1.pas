unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.ComCtrls,
  Data.Bind.Components;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    BindingsList1: TBindingsList;
    BindExpressionStatusBar11: TBindExpression;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormResize(Sender: TObject);
begin
  BindingsList1.Notify(Sender, '');
end;

end.
