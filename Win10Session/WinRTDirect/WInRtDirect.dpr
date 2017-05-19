program WInRtDirect;

uses
  Vcl.Forms,
  WinRTD_Form in 'WinRTD_Form.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
