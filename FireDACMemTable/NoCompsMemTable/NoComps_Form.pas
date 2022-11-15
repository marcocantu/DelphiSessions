unit NoComps_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm13 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    MemTable: TFDMemTable;
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
var
  AFieldDef: TFieldDef;
begin
  MemTable := TFDMemTable.Create(self);

  MemTable.FieldDefs.Clear;
  MemTable.FieldDefs.Add('ID', ftInteger, 0, True); // required
  MemTable.FieldDefs.Add('FirstName', ftString, 30);
  MemTable.FieldDefs.Add('LastName', ftString, 30);

  AFieldDef := MemTable.FieldDefs.AddFieldDef;
  AFieldDef.Name := 'Enabled';
  AFieldDef.DataType := ftBoolean;

  MemTable.CreateDataSet;

  MemTable.InsertRecord([1, 'Marco', 'Cantu', True]);
  MemTable.InsertRecord([2, 'Joe', 'Red', False]);

  DataSource1.DataSet := MemTable;

end;

procedure TForm13.Button2Click(Sender: TObject);
begin
  MemTable.IndexFieldNames := 'LastName';
  MemTable.IndexesActive := True;
end;

end.
