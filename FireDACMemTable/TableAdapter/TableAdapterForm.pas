unit TableAdapterForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TForm26 = class(TForm)
    FDConnection1: TFDConnection;
    FDCommand1: TFDCommand;
    FDTableAdapter1: TFDTableAdapter;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    FDMemTable2: TFDMemTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}

procedure TForm26.Button1Click(Sender: TObject);
begin
  FDQuery1.Open;
  //FDMemTable2.Data := FDQuery1.Data;
  FDMemTable2.CopyDataSet(FDQuery1, [coStructure, coAppend]);
  FDMemTable2.Open;
end;

procedure TForm26.Button2Click(Sender: TObject);
begin
  FDConnection1.Connected := True;
  FDCommand1.Active := True;
  FDMemTable1.Active := True;
end;

end.
