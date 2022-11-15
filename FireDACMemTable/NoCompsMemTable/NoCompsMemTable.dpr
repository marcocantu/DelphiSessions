program NoCompsMemTable;

uses
  Vcl.Forms,
  NoComps_Form in 'NoComps_Form.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
