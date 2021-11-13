unit BindingsDB_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope, Data.DB, Datasnap.DBClient, Vcl.Grids,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    BindScopeDB1: TBindScopeDB;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BindingsList1: TBindingsList;
    BindLinkEdit11: TBindLink;
    Image1: TImage;
    BindLinkEdit21: TBindLink;
    BindLinkEdit31: TBindLink;
    ListBox1: TListBox;
    TrackBar1: TTrackBar;
    BindPositionTrackBar11: TBindPosition;
    BindListListBox11: TBindList;
    BindLinkImage11: TBindLink;
    BindLinkEdit41: TBindLink;
    BindLinkEdit42: TBindLink;
    Edit4: TEdit;
    BindLinkEdit43: TBindLink;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ClientDataSet1.Open;
end;

end.
