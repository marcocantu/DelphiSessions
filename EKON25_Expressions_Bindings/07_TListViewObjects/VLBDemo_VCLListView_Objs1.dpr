program VLBDemo_VCLListView_Objs1;

uses
  Vcl.Forms,
  ListViewObjectsForm in 'ListViewObjectsForm.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
