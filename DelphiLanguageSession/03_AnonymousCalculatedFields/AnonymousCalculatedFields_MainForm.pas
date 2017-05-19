unit AnonymousCalculatedFields_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Data.FMTBcd,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.Provider, Data.SqlExpr,
  Datasnap.DBClient, Generics.Collections, Vcl.StdCtrls;

type
  TClientDataSet = class (DataSnap.DBClient.TClientDataSet)
  private
    fTrueCalc: Boolean;
    FDerivedDataset: TClientDataSet;
    FFieldCalculations: TDictionary<string,TFunc<string>>;
  public
    // snapshot version
    procedure AddExtraField (const fieldName: string; fieldType: TFieldType; nSize: Integer;
      calcField: TFunc<string>); overload;
    procedure CommitExtraFields;
    function GetDerivedDataset: TClientDataSet;
  protected
    procedure CreateFields; override;
  public
    // truly calculated version
    procedure AddExtraFieldCalc(const fieldName: string; fieldType: TFieldType;
      nSize: Integer; calcField: TFunc<string>);
    procedure DoCalc (DataSet: TDataSet);
  end;


  TForm1 = class(TForm)
    FBCONNECTION: TSQLConnection;
    ClientDataSet1: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnPlain: TButton;
    btnCalc: TButton;
    btnTrueCalc: TButton;
    procedure btnPlainClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure btnTrueCalcClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  DateUtils;

{ TClientDataSet }

procedure TClientDataSet.AddExtraField(const fieldName: string;
  fieldType: TFieldType; nSize: Integer; calcField: TFunc<string>);
begin
  if not Assigned (FDerivedDataset) then
  begin
    FDerivedDataset := TClientDataSet.Create(nil);
    FDerivedDataset.FieldDefs.Assign(self.FieldDefs);
    FFieldCalculations := TDictionary<string,TFunc<string>>.Create;
  end;
  if FDerivedDataset.Active = False then
  begin
    FDerivedDataset.FieldDefs.Add(fieldName, fieldType, nSize,
      FDerivedDataset.FieldDefs.Count = 0); // first is key field
    if Assigned (calcField) then
      FFieldCalculations.Add (fieldname, calcField);
  end;
end;

procedure TClientDataSet.AddExtraFieldCalc(const fieldName: string;
  fieldType: TFieldType; nSize: Integer; calcField: TFunc<string>);
begin
  fTrueCalc := True;
  if not Assigned (FFieldCalculations) then
  begin
    OnCalcFields := DoCalc;
    FFieldCalculations := TDictionary<string,TFunc<string>>.Create;
  end;
  FFieldCalculations.Add (fieldname, calcField);
end;

procedure TClientDataSet.CommitExtraFields;
var
  i: Integer;
  fieldname: string;
  aFunct: TFunc<string>;
begin
  FDerivedDataset.CreateDataSet;
  FDerivedDataset.Open;

  self.First;
  while not self.Eof do
  begin
    FDerivedDataset.Append;
    for i := 0 to self.FieldCount - 1 do
    begin
      FDerivedDataset.Fields[i].Value := self.Fields[i].Value;
    end;
    for fieldname in FFieldCalculations.Keys do
    begin
      aFunct := FFieldCalculations[fieldname];
      FDerivedDataset.FieldByName (fieldname).AsString := aFunct;
    end;
    FDerivedDataset.UpdateRecord;
    self.Next;
  end;
end;

procedure TClientDataSet.CreateFields;
var
  calcField: TStringField;
  fieldname: string;
begin
  inherited;

  if FTrueCalc then
    for fieldname in FFieldCalculations.Keys do
    begin
      calcField := TStringField.Create(self);
      calcField.FieldKind := fkCalculated;
      calcField.FieldName := fieldname;
      calcField.Index := -1;
      calcField.Size := 20;
      calcField.DataSet := self;
    end;
end;

procedure TClientDataSet.DoCalc(DataSet: TDataSet);
var
  fieldname: string;
  aFunct: TFunc<string>;
begin
  for fieldname in FFieldCalculations.Keys do
  begin
    aFunct := FFieldCalculations[fieldname];
    Dataset.FieldByName (fieldname).AsString := aFunct;
  end;
end;

function TClientDataSet.GetDerivedDataset: TClientDataSet;
begin
  Result := FDerivedDataset;
end;

procedure TForm1.btnCalcClick(Sender: TObject);
begin
  ClientDataSet1.Close;
  DataSource1.DataSet := nil;
  ClientDataSet1.Open;
  ClientDataSet1.AddExtraField('WorkYears', ftString, 10,
    function () : string
    begin
      Result := IntToStr (YearsBetween (Now,
        ClientDataSet1.FieldByName('HIRE_DATE').AsDateTime));
    end);
  ClientDataSet1.CommitExtraFields;
  DataSource1.DataSet := ClientDataSet1.GetDerivedDataset;
end;

procedure TForm1.btnPlainClick(Sender: TObject);
begin
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

procedure TForm1.btnTrueCalcClick(Sender: TObject);
begin
  ClientDataSet1.Close;
  ClientDataSet1.AddExtraFieldCalc('WorkYears', ftString, 10,
    function () : string
    begin
      Result := IntToStr (YearsBetween (Now,
        ClientDataSet1.FieldByName('HIRE_DATE').AsDateTime));
    end);
  ClientDataSet1.Open;
end;

end.
