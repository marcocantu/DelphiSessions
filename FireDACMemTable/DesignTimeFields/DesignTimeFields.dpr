program DesignTimeFields;

uses
  Vcl.Forms,
  DesignTimeFields_Form in 'DesignTimeFields_Form.pas' {Form26};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.Run;
end.
