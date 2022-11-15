unit FireDACMemTableForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IB, Datasnap.Provider, Datasnap.DBClient, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Moni.Base, FireDAC.Moni.FlatFile, FireDAC.Phys.SQLiteVDataSet,
  FireDAC.Phys.IBDef, FireDAC.Phys.IBBase;

type
  TForm7 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDMemTable1: TFDMemTable;
    Button3: TButton;
    Button4: TButton;
    FDMemTable2: TFDMemTable;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  FDQuery1.SQL.Clear;  
  FDQuery1.SQL.Add('select * from Employee; ');
  FDQuery1.Open;
  DataSetProvider1.DataSet := FDQuery1;
  ClientDataSet1.Open;
  DataSource1.DataSet := ClientDataSet1;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  FDQuery1.SQL.Add('select * from Employee; ');
  FDQuery1.Open;
  FDQuery1.FetchAll;
  // assign records to FDMemTable1
  FDMemTable1.Data := FDQuery1.Data;

  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('select * from Department; ');
  FDQuery1.Open;
  FDQuery1.FetchAll;
  // assign records to FDMemTable2
  FDMemTable2.Data := FDQuery1.Data;

  DataSource1.DataSet := FDMemTable1;

  FDQuery1.Close;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  if DataSource1.DataSet = FDMemTable1 then
    DataSource1.DataSet := FDMemTable2
  else
    DataSource1.DataSet := FDMemTable1;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  FDConnection1.Connected := True;

end;

end.
