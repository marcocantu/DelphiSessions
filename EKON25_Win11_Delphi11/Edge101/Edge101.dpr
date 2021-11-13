program Edge101;

uses
  Vcl.Forms,
  Edge101form in 'Edge101form.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
