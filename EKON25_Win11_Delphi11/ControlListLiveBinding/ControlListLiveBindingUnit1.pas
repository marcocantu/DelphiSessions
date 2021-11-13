unit ControlListLiveBindingUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.GenData,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.ControlList, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Vcl.VirtualImage, Vcl.StdCtrls, Data.Bind.ObjectScope,
  Vcl.ControlList, Data.Bind.Controls, Vcl.NumberBox, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.ExtCtrls;

type
  TfrmCtrlListDemo3 = class(TForm)
    ControlList1: TControlList;
    lblColorValue: TLabel;
    lblHeader: TLabel;
    lblIndex: TLabel;
    Panel1: TPanel;
    numCount: TNumberBox;
    Label1: TLabel;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkGridToDataSourcePrototypeBindSource1: TLinkGridToDataSource;
    LinkControlToPropertyItemCount: TLinkControlToProperty;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    numIndex: TNumberBox;
    LinkControlToPropertyMaxValue: TLinkControlToProperty;
    btnJump: TSpeedButton;
    Label2: TLabel;
    LinkControlToPropertyItemIndex: TLinkControlToProperty;
    NumberBox1: TNumberBox;
    LinkControlToPropertyItemHeight: TLinkControlToProperty;
    NumberBox2: TNumberBox;
    LinkControlToPropertyItemWidth: TLinkControlToProperty;
    NumberBox3: TNumberBox;
    LinkControlToPropertyItemMarginsTop: TLinkControlToProperty;
    LinkControlToPropertyItemMarginsRight: TLinkControlToProperty;
    LinkControlToPropertyItemMarginsLeft: TLinkControlToProperty;
    LinkControlToPropertyItemMarginsBottom: TLinkControlToProperty;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure ControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
      ARect: TRect; AState: TOwnerDrawState);
    procedure ControlList1ItemClick(Sender: TObject);
    procedure btnJumpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCtrlListDemo3: TfrmCtrlListDemo3;

implementation

{$R *.dfm}

procedure TfrmCtrlListDemo3.btnJumpClick(Sender: TObject);
begin
  if ControlList1.ItemIndex > ControlList1.ItemCount div 2 then
    ControlList1.ItemIndex := 0
  else
    ControlList1.ItemIndex := ControlList1.ItemCount;
end;

procedure TfrmCtrlListDemo3.ControlList1BeforeDrawItem(AIndex: Integer;
  ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
begin
  ACanvas.Brush.Color := StrToInt(lblColorValue.Caption);
  var BaseWidth := 5;
  var PenWidth: Integer := BaseWidth;
  ACanvas.Pen.Width := PenWidth;
  if odSelected in AState then
    ACanvas.Pen.Color := clWindowText
  else
    ACanvas.Pen.Color := clWindow;
  ACanvas.Rectangle(ARect);
  lblIndex.Caption := Format('#%d',[AIndex]);
end;

procedure TfrmCtrlListDemo3.ControlList1ItemClick(Sender: TObject);
begin
  numIndex.Value := ControlList1.ItemIndex;
end;

end.
