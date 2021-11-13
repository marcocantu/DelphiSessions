unit NumberBoxDemo_Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.Bind.Components, Vcl.NumberBox, Vcl.Menus;

type
  TNumBoxDemo = class(TForm)
    NumberBox1: TNumberBox;
    CheckBox1: TCheckBox;
    BindingsList1: TBindingsList;
    LinkControlToPropertyAcceptExpressions: TLinkControlToProperty;
    CheckBox2: TCheckBox;
    LinkControlToPropertyAutoSize: TLinkControlToProperty;
    rdoPlacement: TRadioGroup;
    GroupBox1: TGroupBox;
    ColorListBox1: TColorListBox;
    LinkControlToPropertyColor: TLinkControlToProperty;
    CheckBox3: TCheckBox;
    LinkControlToPropertyAutoSelect: TLinkControlToProperty;
    rdoMode: TRadioGroup;
    rdoCurrencyFormat: TRadioGroup;
    NumberBox2: TNumberBox;
    LinkControlToPropertyDecimal: TLinkControlToProperty;
    Label1: TLabel;
    NumberBox3: TNumberBox;
    Label2: TLabel;
    NumberBox4: TNumberBox;
    Label3: TLabel;
    LinkControlToPropertyMaxLength: TLinkControlToProperty;
    NumberBox5: TNumberBox;
    Label4: TLabel;
    LinkControlToPropertySmallStep: TLinkControlToProperty;
    NumberBox6: TNumberBox;
    Label5: TLabel;
    LinkControlToPropertyMaxValue: TLinkControlToProperty;
    NumberBox7: TNumberBox;
    Label6: TLabel;
    LinkControlToPropertyMinValue: TLinkControlToProperty;
    Label7: TLabel;
    CheckBox4: TCheckBox;
    LinkControlToPropertyReadOnly: TLinkControlToProperty;
    NumberBox8: TNumberBox;
    LinkControlToPropertySpinButtonOptionsButtonWidth: TLinkControlToProperty;
    NumberBox9: TNumberBox;
    LinkControlToPropertySpinButtonOptionsArrowWidth: TLinkControlToProperty;
    Label8: TLabel;
    rdoAlign: TRadioGroup;
    Label9: TLabel;
    Label10: TLabel;
    NumberBox10: TNumberBox;
    LinkControlToPropertySpinButtonOptionsRepeatTimerInterval: TLinkControlToProperty;
    CheckBox5: TCheckBox;
    LinkControlToPropertySpinButtonOptionsShowInlineDividers: TLinkControlToProperty;
    CheckBox6: TCheckBox;
    LinkControlToPropertyUseMouseWheel: TLinkControlToProperty;
    CheckBox7: TCheckBox;
    LinkControlToPropertyUseNaNValue: TLinkControlToProperty;
    CheckBox8: TCheckBox;
    LinkControlToPropertyUseUpDownKeys: TLinkControlToProperty;
    CheckBox9: TCheckBox;
    LinkControlToPropertyWrap: TLinkControlToProperty;
    ColorBox1: TColorBox;
    Label11: TLabel;
    ColorBox2: TColorBox;
    Label12: TLabel;
    ColorBox3: TColorBox;
    Label13: TLabel;
    ColorBox4: TColorBox;
    Label14: TLabel;
    LinkControlToPropertySpinButtonOptionsArrowColor: TLinkControlToProperty;
    LinkControlToPropertySpinButtonOptionsArrowHotColor: TLinkControlToProperty;
    LinkControlToPropertySpinButtonOptionsArrowPressedColor: TLinkControlToProperty;
    LinkControlToPropertySpinButtonOptionsArrowDisabledColor: TLinkControlToProperty;
    LinkControlToPropertyLargeStep: TLinkControlToProperty;
    ComboBox1: TComboBox;
    Label15: TLabel;
    MainMenu1: TMainMenu;
    mnuStyle: TMenuItem;
    NumberBox11: TNumberBox;
    LinkControlToPropertyFontHeight: TLinkControlToProperty;
    Label16: TLabel;
    ComboBox2: TComboBox;
    Exit1: TMenuItem;
    Label17: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure rdoPlacementClick(Sender: TObject);
    procedure rdoModeClick(Sender: TObject);
    procedure rdoCurrencyFormatClick(Sender: TObject);
    procedure rdoAlignClick(Sender: TObject);
    procedure StyleMenuItemClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    procedure unused;
  public
    { Public declarations }
  end;

var
  NumBoxDemo: TNumBoxDemo;

implementation

{$R *.dfm}

uses
  TypInfo, VCL.Themes, IOUtils, Generics.Collections;

procedure TNumBoxDemo.ComboBox1Change(Sender: TObject);
begin
  NumberBox1.Mode := nbmCurrency;
  NumberBox1.CurrencyString := ComboBox1.Text;
  rdoMode.ItemIndex := ord(nbmCurrency);
end;

procedure TNumBoxDemo.ComboBox2Change(Sender: TObject);
begin
  NumberBox1.AcceptExpressions := True;
  NumberBox1.SetFocus;
  NumberBox1.Text := ComboBox2.Text;
end;

procedure TNumBoxDemo.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TNumBoxDemo.FormCreate(Sender: TObject);
begin
  for var nbsp := Low(TNumberBoxSpinButtonPlacement) to High(TNumberBoxSpinButtonPlacement) do
    rdoPlacement.Items.Add( TRttiEnumerationType.GetName(nbsp) );
  rdoPlacement.ItemIndex := Ord(NumberBox1.SpinButtonOptions.Placement);
  for var nbm := Low(TNumberBoxMode) to High(TNumberBoxMode) do
    rdoMode.Items.Add( TRttiEnumerationType.GetName(nbm) );
  rdoMode.ItemIndex := Ord(NumberBox1.Mode);
  for var algn := Low(TAlignment) to High(TAlignment) do
    rdoAlign.Items.Add( TRttiEnumerationType.GetName(algn) );
  rdoAlign.ItemIndex := Ord(NumberBox1.Alignment);


  for var sname in TStyleManager.StyleNames do
  begin
    var styleItem := TMenuItem.Create(mnuStyle);
    styleItem.Caption := sName;
    styleItem.OnClick := StyleMenuItemClick;
    mnuStyle.Add(styleItem);
  end;
  var Authors := TStringList.Create;
  for var fname in TDirectory.GetFiles('C:\Users\Public\Documents\Embarcadero\Studio\21.0\Styles','*.vsf') do
  begin
    var info: TStyleInfo;
    if TStyleManager.IsValidStyle(fname, info) then
    begin
      var Author: string;
      if info.Author.StartsWith('Embarcadero') then
        Author := 'Embarcadero'
      else
        Author := info.Author;
      if info.Name.StartsWith('Metro') or info.Name.StartsWith('Tablet') or info.Name.StartsWith('Windows') then
        Author := 'Windows';
      authors.AddPair(Author, info.Name);
      try
        TStyleManager.LoadFromFile(fname);
      except on EDuplicateStyleException do

      end;
    end;
  end;
  authors.Sort;
  var authorItem: TMenuItem := nil;
  for var i := 0 to pred(authors.Count) do
  begin
    if not Assigned(authorItem) or (authorItem.Caption <> authors.Names[i]) then
    begin
      authorItem := TMenuItem.Create(mnuStyle);
      authorItem.AutoHotkeys := TMenuItemAutoFlag.maManual;
      authorItem.Caption := authors.Names[i];
      mnuStyle.Add(authorItem);
    end;
    var styleItem := TMenuItem.Create(mnuStyle);
    styleItem.AutoHotkeys := TMenuItemAutoFlag.maManual;
    styleItem.Caption := Authors.ValueFromIndex[i];
    styleItem.OnClick := StyleMenuItemClick;
    authorItem.Add(styleItem);
  end;
end;

procedure TNumBoxDemo.rdoAlignClick(Sender: TObject);
begin
  NumberBox1.Alignment := TAlignment(rdoAlign.ItemIndex);
end;

procedure TNumBoxDemo.rdoCurrencyFormatClick(Sender: TObject);
begin
  NumberBox1.Mode := nbmCurrency;
  NumberBox1.CurrencyFormat := rdoCurrencyFormat.ItemIndex;
  rdoMode.ItemIndex := ord(nbmCurrency);
end;

procedure TNumBoxDemo.rdoModeClick(Sender: TObject);
begin
  NumberBox1.Mode := TNumberBoxMode(rdoMode.ItemIndex);
end;

procedure TNumBoxDemo.rdoPlacementClick(Sender: TObject);
begin
  NumberBox1.SpinButtonOptions.Placement := TNumberBoxSpinButtonPlacement(rdoPlacement.ItemIndex);
end;

procedure TNumBoxDemo.StyleMenuItemClick(Sender: TObject);
begin
  TStyleManager.TrySetStyle(TMenuItem(Sender).Caption.Replace('&','',[rfReplaceAll]));
end;

procedure TNumBoxDemo.unused;
begin

end;

initialization

end.
