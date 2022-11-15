program WeatherClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  WeatherClient_Form in 'WeatherClient_Form.pas' {Form13},
  WeatherClient_Module in 'WeatherClient_Module.pas' {DataModule14: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TDataModule14, DataModule14);
  Application.Run;
end.
