program BindingsExpr;

uses
  Vcl.Forms,
  BindingsExpr_MainForm in 'BindingsExpr_MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
