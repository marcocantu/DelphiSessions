program TableAdapter;

uses
  Vcl.Forms,
  TableAdapterForm in 'TableAdapterForm.pas' {Form26};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.Run;
end.
