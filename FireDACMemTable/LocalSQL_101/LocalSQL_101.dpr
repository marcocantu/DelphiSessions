program LocalSQL_101;

uses
  Vcl.Forms,
  LocalSQL_Form in 'LocalSQL_Form.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
