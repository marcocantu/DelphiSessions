unit ParallelForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormThreading = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormThreading: TFormThreading;

implementation

{$R *.dfm}

uses
  System.Threading, System.SyncObjs, System.RTTI;

procedure TFormThreading.Button1Click(Sender: TObject);
var
  aTask: ITask;
begin
  // not a thread safe snippet
  aTask := TTask.Create (procedure ()
    begin
      sleep (3000); // 3 seconds
      ShowMessage ('Hello');
    end);
  aTask.Start;
end;

procedure TFormThreading.Button2Click(Sender: TObject);
var
  tasks: array of ITask;
  value: Integer;
begin
  Setlength (tasks ,2);
  value := 0;

  tasks[0] := TTask.Create (procedure ()
    begin
      sleep (3000); // 3 seconds
      TInterlocked.Add (value, 3000);
    end);
  tasks[0].Start;

  tasks[1] := TTask.Create (procedure ()
    begin
      sleep (5000); // 5 seconds
      TInterlocked.Add (value, 5000);
    end);
  tasks[1].Start;

  TTask.WaitForAll(tasks);
  ShowMessage ('All done: ' + value.ToString);
end;

function ComputeSomething: Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to 10000 do
    Result := Result + Round(Sqrt(I));
end;

procedure TFormThreading.Button3Click(Sender: TObject);
var
  OneValue: IFuture <Integer>;
  OtherValue: Integer;
  Total: Integer;
begin
  OneValue := TTask.Future<Integer>(function: Integer
    begin
      Result := ComputeSomething;
    end);
  Memo1.Lines.Add(TRttiEnumerationType.
    GetName<TTaskStatus>(OneValue.Status));

  OtherValue := ComputeSomething;
  Memo1.Lines.Add(TRttiEnumerationType.
    GetName<TTaskStatus>(OneValue.Status));

  Total := OtherValue + OneValue.Value;
  Memo1.Lines.Add(TRttiEnumerationType.
    GetName<TTaskStatus>(OneValue.Status));

  // result
  Memo1.Lines.Add(Total.ToString);
end;

end.
