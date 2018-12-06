program BlockScope;

uses
  Vcl.Forms,
  BlockScope_Form in 'BlockScope_Form.pas' {Form3},
  SmartPointerClass in 'SmartPointerClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
