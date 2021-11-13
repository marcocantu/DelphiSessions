unit ListViewObjectsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.GenData, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.ComCtrls,
  Generics.Collections, Vcl.Bind.GenData, Vcl.StdCtrls;

type
  TPersonSummary = class
  private
    FLastName: string;
    FOffice: string;
    FSalary: Double;
    FFirstName: string;
    FTeam: string;
  public
    constructor Create(aFirstName, aLastName, aOffice, aTeam : string; aSalary : double);
    property FirstName : string read FFirstName write FFirstName;
    property LastName : string read FLastName write FLastName;
    property Office : string read FOffice write FOffice;
    property Salary : Double read FSalary write FSalary;
    property Team : string read FTeam write FTeam;
  end;

  TPersonList = class(TObjectList<TPersonSummary>);

  TForm4 = class(TForm)
    ListView1: TListView;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    Label1: TLabel;
    procedure PrototypeBindSource1CreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
  private
    { Private declarations }
    FPersonList : TPersonList;
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); reintroduce; override;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

{ TPersonSummary }

{ TForm4 }

constructor TForm4.Create(AOwner: TComponent);
var
  Person: TPersonSummary;
  I: Integer;
  FOffice: string;
  FFirst: string;
  FLast: string;
  FSalary: Double;
  FTeam : string;
begin
  FPersonList := TPersonList.Create;
  for I := 1 to 30 do begin
    {$REGION 'Building Demo data for people'}
    // Group into offices.
    case I of
      1..7   : FOffice := 'Maidenhead';
      8..12  : FOffice := 'San Francisco';
      13..20 : FOffice := 'San Jose';
      21..25 : FOffice := 'Sydney';
      else     FOffice := 'Moscow';
    end;
    // Random Salary
    FSalary := Random(100)*100;

    // Random name
    case Random(12) of
      0  : FFirst := 'Marco';
      1  : FFirst := 'Stephen';
      2  : FFirst := 'John';
      3  : FFirst := 'Sarina';
      4  : FFirst := 'Sriram';
      5  : FFirst := 'Charlie';
      6  : FFirst := 'Steve';
      7  : FFirst := 'Jason';
      8  : FFirst := 'Tim';
      9  : FFirst := 'Pawel';
      10 : FFirst := 'Matthias';
      11 : FFirst := 'Vsevolod';
    end;

    case Random(3) of
      0 : FTeam := 'Sales';
      1 : FTeam := 'R&D';
      2 : FTeam := 'Finance';
    end;

    case Random(12) of
      0  : FLast := 'Cantu';
      1  : FLast := 'Ball';
      2  : FLast := 'Thomas';
      3  : FLast := 'DuPont';
      4  : FLast := 'Balasubramanian';
      5  : FLast := 'Caro';
      6  : FLast := 'Blas';
      7  : FLast := 'Vokes';
      8  : FLast := 'Del Chiaro';
      9  : FLast := 'Glowacki';
      10 : FLast := 'Eissing';
      11 : FLast := 'Leonov';
    end;
    {$ENDREGION}

    Person := TPersonSummary.Create(FFirst, FLast, FOffice, FTeam, FSalary);

    FPersonList.Add(Person);
  end;

  inherited;

end;

{ TPersonSummary }

constructor TPersonSummary.Create(aFirstName, aLastName, aOffice, aTeam: string;
  aSalary: double);
begin
  inherited Create;
  FLastName := aLastName;
  FFirstName := aFirstName;
  FOffice := aOffice;
  FSalary := aSalary;
  FTeam := aTeam;
end;

procedure TForm4.PrototypeBindSource1CreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  ABindSourceAdapter :=
    TListBindSourceAdapter<TPersonSummary>.Create(
      Self,FPersonList,True);
end;

end.
