program Win11_DemoProject;

uses
  Vcl.Forms,
  Win11_DemoForm in 'Win11_DemoForm.pas' {Form6},
  Win11Forms in 'Win11Forms.pas',
  TitleBar_Form in 'TitleBar_Form.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
