unit DesignTimeFields_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm26 = class(TForm)
    FDMemTable1: TFDMemTable;
    FDMemTable1ID: TIntegerField;
    FDMemTable1Name: TStringField;
    FDMemTable1Enabled: TBooleanField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDMemTable2: TFDMemTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}

procedure TForm26.FormCreate(Sender: TObject);
begin
  FDMemTable2.CloneCursor(FDMemTable1);
end;

end.
