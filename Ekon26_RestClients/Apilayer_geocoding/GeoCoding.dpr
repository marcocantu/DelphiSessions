program GeoCoding;

uses
  System.StartUpCopy,
  FMX.Forms,
  GeoCodingForm in 'GeoCodingForm.pas' {Form41};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm41, Form41);
  Application.Run;
end.
