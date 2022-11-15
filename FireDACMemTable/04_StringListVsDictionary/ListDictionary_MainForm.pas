unit ListDictionary_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Generics.Collections, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TMyObject = class
  private
    FValue: Integer;
    procedure SetValue(const Value: Integer);
  public
    property Value: Integer read FValue write SetValue;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Button3: TButton;
    FDMemTable1: TFDMemTable;
    Button4: TButton;
    Memo3: TMemo;
    FDMemTable1Name: TStringField;
    FDMemTable1Value: TIntegerField;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    sList: TStringList;

    // changed code (in Frankfurt) to use the specific TObjectDictionary class
    // which allows objects ownership for either values or keys

    sDict: {TDictionary} TObjectDictionary<string,TMyObject>;
    // procedure ValueNotify(Sender: TObject; const Item: TMyObject;
    // Action: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Diagnostics;

function RandomName: string;
var
  i: Integer;
begin
  Result := '';
  for I := 1 to 30 + Random (50) do
    Result := Result + Char (Ord('a') + Random (26));
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  sw: TStopwatch;
  I: Integer;
  aName: string;
  anIndex: Integer;
  anObject: TMyObject;
  theTotal: integer;
begin
  sw.Reset;
  sw.Start;

  theTotal := 0;
  for I := 0 to sList.Count -1  do
  begin
    aName := sList[I];
    // now search for it
    anIndex := sList.IndexOf (aName);
    // get the object
    anObject := sList.Objects [anIndex] as TMyObject;
    Inc (theTotal, anObject.Value);
  end;

  sw.Stop;
  memo1.Lines.Add ('Total: ' + IntToStr (theTotal));
  memo1.Lines.Add ('StringList: ' + IntToStr (sw.ElapsedMilliseconds));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  sw: TStopwatch;
  I: Integer;
  aName: string;
  anObject: TMyObject;
  theTotal: integer;
begin
  sw.Reset;
  sw.Start;

  theTotal := 0;
  for I := 0 to sList.Count -1  do
  begin
    aName := sList[I];
    // get the object searching for it
    anObject := sDict.Items [aName];
    Inc (theTotal, anObject.Value);
  end;

  sw.Stop;
  memo2.Lines.Add ('Total: ' + IntToStr (theTotal));
  memo2.Lines.Add ('Dictionary: ' + IntToStr (sw.ElapsedMilliseconds));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
  aName: string;
  anObject: TMyObject;
begin
  // else insertion is very slow
  sList.Sorted := False;

  for I := 1 to 200_000 do
  begin
    aName := RandomName;
    anObject := TMyObject.Create;
    anObject.Value := Random (200);
    sList.AddObject (aName, anObject);
    sDict.Add (aName, anObject);
    FDMemTable1.InsertRecord([aName, anObject.Value]);
    if (I mod 1000) = 0 then
      Application.ProcessMessages;
  end;
  Caption := Caption +  ' - ' + IntToStr (sList.Count);

  // else insertion is very slow
  sList.Sorted := True;
  FDMemTable1.IndexesActive := True; // index at the end
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  sw: TStopwatch;
  I: Integer;
  aName: string;
  aValue: Integer;
  theTotal: integer;
begin
  sw.Reset;
  sw.Start;

  theTotal := 0;
  for I := 0 to sList.Count -1  do
  begin
    aName := sList[I];
    FDMemTable1.Locate('Name', aName);
    aValue := FDMemTable1Value.AsInteger;
    Inc (theTotal, aValue);
  end;

  sw.Stop;
  memo3.Lines.Add ('Total: ' + IntToStr (theTotal));
  memo3.Lines.Add ('MemTable: ' + IntToStr (sw.ElapsedMilliseconds));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  sList := TStringList.Create;
  sDict :=  {TDictionary} TObjectDictionary<string,TMyObject>.
    Create ([doOwnsValues]);
  // sDict.OnValueNotify := ValueNotify;
  FDMemTable1.CreateDataSet;
  FDMemTable1.Open;
  randomize;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  sList.Free;
  sDict.Free;
end;

//procedure TForm1.ValueNotify(Sender: TObject; const Item: TMyObject;
//    Action: TCollectionNotification);
//begin
//  if Action = cnRemoved then
//    Item.Free;
//end;

{ TMyObject }

procedure TMyObject.SetValue(const Value: Integer);
begin
  FValue := Value;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
