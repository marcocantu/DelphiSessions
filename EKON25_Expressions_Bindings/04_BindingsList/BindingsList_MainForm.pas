unit BindingsList_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Vcl.StdCtrls, System.Generics.Collections, Vcl.ComCtrls;

// Current.Name + " is " + ToStr(Current.Age) + " years old"

type
  TPerson = class
  private
    FName: string;
    FAge: Integer;
    procedure SetAge(const Value: Integer);
    procedure SetName(const Value: string);
  public
    property Name: string read FName write SetName;
    property Age: Integer read FAge write SetAge;

    constructor Create (aName: string; anAge: Integer);
  end;

  TForm1 = class(TForm)
    ListBox1: TListBox;
    btnAdd: TButton;
    BindingsList1: TBindingsList;
    BindListListBox11: TBindList;
    BindScope1: TBindScope;
    edName: TEdit;
    ListView1: TListView;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    List: TObjectList<TPerson>;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  List.Add (TPerson.Create(edName.Text, Random (70)));
  BindListListBox11.FillList;
  //BindListListView11.FillList;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  List := TObjectList<TPerson>.Create;
  List.Add (TPerson.Create('Andrew', 55));
  List.Add (TPerson.Create('Paul', 21));
  List.Add (TPerson.Create('Mike', 34));
  List.Add (TPerson.Create('John', 25));
  List.Add (TPerson.Create('Mark', 35));

  BindScope1.DataObject := List;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

{ TPerson }

constructor TPerson.Create(aName: string; anAge: Integer);
begin
  fName := aName;
  fAge := anAge;
end;

procedure TPerson.SetAge(const Value: Integer);
begin
  fAge := Value;
end;

procedure TPerson.SetName(const Value: string);
begin
  fName := Value;
end;

end.
