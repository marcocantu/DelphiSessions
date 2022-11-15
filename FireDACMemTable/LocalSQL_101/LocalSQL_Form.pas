unit LocalSQL_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.DataSet;

type
  TForm13 = class(TForm)
    SQLIteConnection: TFDConnection;
    EmployeeConnection: TFDConnection;
    EmployeeTable: TFDQuery;
    FDLocalSQL1: TFDLocalSQL;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure EmployeeTableAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.EmployeeTableAfterPost(DataSet: TDataSet);
begin
  FDQuery1.Close;
  FDQuery1.Open;
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
  SQLIteConnection.Connected := True;
  EmployeeConnection.Connected := True;
  EmployeeTable.Active := True;
  FDLocalSQL1.Active := True;
  FDQuery1.Active := True;
end;

end.
