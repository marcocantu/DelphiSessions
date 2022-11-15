program RestCountriesVCL;

uses
  Vcl.Forms,
  RestCountries_Form in 'RestCountries_Form.pas' {Form43};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm43, Form43);
  Application.Run;
end.
