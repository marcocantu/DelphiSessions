program StringListVsDictionaryVsMemTable;

uses
  Vcl.Forms,
  ListDictionary_MainForm in 'ListDictionary_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
