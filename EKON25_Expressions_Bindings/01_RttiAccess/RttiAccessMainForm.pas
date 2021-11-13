unit RttiAccessMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm39 = class(TForm)
    btnReadValues: TButton;
    btnInvoke: TButton;
    btnSet: TButton;
    Memo1: TMemo;
    btnLowLevel: TButton;
    procedure btnReadValuesClick(Sender: TObject);
    procedure btnInvokeClick(Sender: TObject);
    procedure btnSetClick(Sender: TObject);
    procedure btnLowLevelClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Log (const strMsg: string);
  end;

var
  Form39: TForm39;

implementation

{$R *.dfm}

uses
  Rtti;

procedure TForm39.btnInvokeClick(Sender: TObject);
var
  context: TRttiContext;
  aType: TRttiType;
  aMethod: TRttiMethod;
  theValues: array of TValue;
begin
  aType := context.GetType(TForm);
  aMethod := aType.GetMethod('FlipChildren');
  SetLength (theValues, 1);
  theValues[0] := True;
  // theValues[0] := 1; // error, different type
  aMethod.Invoke(self, theValues);
end;

procedure TForm39.btnReadValuesClick(Sender: TObject);
var
  context: TRttiContext;
  aType: TRttiType;
  aProperty: TRttiProperty;
  aValue: TValue;
  aField: TRttiField;
begin
  aType := context.GetType(TButton);
  aProperty := aType.GetProperty('Caption');
  aValue := aProperty.GetValue(Sender);
  Log ('Caption: ' + aValue.AsString);

  aField := aType.GetField('FDesignInfo');
  aValue := aField.GetValue(Sender);
  Log ('FDesignInfo: ' + IntToStr (aValue.AsInteger));
end;

procedure TForm39.btnSetClick(Sender: TObject);
var
  context: TRttiContext;
  aType: TRttiType;
  aSetType: TRttiSetType;
  aProperty: TRttiProperty;
  aValue: TValue;
  b: Byte;
begin
  aType := context.GetType(TButton);
  aProperty := aType.GetProperty('Anchors');
  aSetType := aProperty.PropertyType.AsSet;
  Log ('Type: ' + aSetType.ToString);

  aValue := aProperty.GetValue(Sender);
  Log ('Anchors: ' + aValue.ToString);

  // extract numerica value
  aValue.ExtractRawData(@b);
  Log ('Anchors: ' + IntToStr (b));
end;

procedure TForm39.btnLowLevelClick(Sender: TObject);
var
  aValue: TValue;
  intValue: Integer;
begin
  intValue := 100;
  TValue.Make(intValue, TypeInfo(Integer), aValue);
  Log ('Make 100: '+ aValue.ToString);
end;

procedure TForm39.Log(const strMsg: string);
begin
  Memo1.Lines.Add (strMsg);
end;

end.
