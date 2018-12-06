program INlineProj;

uses
  Vcl.Forms,
  InlineWeird in 'InlineWeird.pas' {Form15};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm15, Form15);
  Application.Run;
end.
