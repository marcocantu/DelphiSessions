unit FMStyles101_MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Layouts, FMX.ListBox,
  FMX.Objects, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TFMStylesForm = class(TForm)
    ListBox1: TListBox;
    btnLoadStyle: TButton;
    btnToRed: TButton;
    btnCustomStyle: TButton;
    btnChangeStyle: TButton;
    btnListItem: TButton;
    StyleBook1: TStyleBook;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Text1: TText;
    btnListItemStyle: TButton;
    procedure btnLoadStyleClick(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure btnToRedClick(Sender: TObject);
    procedure btnChangeStyleClick(Sender: TObject);
    procedure btnCustomStyleClick(Sender: TObject);
    procedure btnListItemClick(Sender: TObject);
    procedure btnListItemStyleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMStylesForm: TFMStylesForm;

implementation

{$R *.fmx}

procedure TFMStylesForm.btnChangeStyleClick(Sender: TObject);
begin
  if btnChangeStyle.StyleLookup = 'btnCustomStyleStyle1' then
    btnChangeStyle.StyleLookup := 'buttonstyle'
  else
    btnChangeStyle.StyleLookup := 'btnCustomStyleStyle1';
end;

procedure TFMStylesForm.btnCustomStyleClick(Sender: TObject);
var
  child: TComponent;
begin
  for child in StyleBook1.Style do
  begin
    ListBox1.Items.Add (child.ClassName);
    if child is TText then
    begin
      if TText(child).StyleName = 'text' then
        TText(child).Color := TAlphaColorRec.Orange;
    end;
  end;
end;

procedure TFMStylesForm.btnListItemClick(Sender: TObject);
var
  listItem: TListBoxItem;
  itemText: TText;
  itemImage: TImage;
begin
  // create a new custom listbox item
  listItem := TListBoxItem.Create(ListBox1);
  listItem.Parent := ListBox1;
  listItem.Height := 150;

  itemText := TText.Create (ListBox1);
  itemText.Parent := listItem;
  itemText.Position.X := 5;
  itemText.Position.Y := 5;
  itemText.Width := 190;
  itemText.Text := 'head.png';
  itemText.Font.Size := 16;

  itemImage := TImage.Create(ListBox1);
  itemImage.Parent := listItem;
  itemImage.Position.X := 200;
  itemImage.Position.Y := 5;
  itemImage.Bitmap.LoadFromFile ('head.png');
  listItem.Height := itemImage.Bitmap.Height;
end;

procedure TFMStylesForm.btnListItemStyleClick(Sender: TObject);
var
  listItem: TListBoxItem;
  itemText: TText;
  itemImage: TImage;
begin
  // create a new custom listbox item
  listItem := TListBoxItem.Create(ListBox1);
  listItem.Parent := ListBox1;

  // force the items style, creating sub-elements
  listItem.StyleLookup := 'newstyle1';

  // customize the text
  itemText := listItem.FindStyleResource ('TextItem') as TText;
  if Assigned (itemText) then
    itemText.Text := 'head.png';

  // customize the image
  itemImage := (listItem.FindStyleResource('ImageItem') as TImage);
  if Assigned (itemImage) then
  begin
    itemImage.Bitmap.LoadFromFile ('head.png');
    listItem.Height := itemImage.Bitmap.Height;
  end
  else
    ShowMessage ('Image binding element not found');
end;

procedure TFMStylesForm.btnLoadStyleClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    StyleBook1.FileName := OpenDialog1.FileName;
    ListBox1.Items.Add ('Picked style ' +
      ExtractFileName (OpenDialog1.FileName));
  end;
end;

procedure TFMStylesForm.btnToRedClick(Sender: TObject);
var
  aText: TText;
begin
  aText := Label1.FindStyleResource ('text') as TText;
  aText.Color := TAlphaColorRec.Red;

  aText := (Sender as TControl).FindStyleResource ('text') as TText;
  aText.Color := TAlphaColorRec.Red;
end;

procedure TFMStylesForm.Text1Click(Sender: TObject);
begin
  if Text1.Color = TAlphaColorRec.Black then
    Text1.Color := TAlphaColorRec.White
  else
    Text1.Color := TAlphaColorRec.Black;
end;

end.
