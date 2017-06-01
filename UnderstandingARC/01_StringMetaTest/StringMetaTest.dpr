program StringMetaTest;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.MobilePreview,
  StringMetaTestForm in 'StringMetaTestForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
