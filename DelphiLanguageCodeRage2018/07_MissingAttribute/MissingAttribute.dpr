program MissingAttribute;

uses
  Vcl.Forms,
  MissingAttribute_Form in 'MissingAttribute_Form.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
