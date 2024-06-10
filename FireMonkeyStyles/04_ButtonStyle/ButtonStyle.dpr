program ButtonStyle;

uses
  System.StartUpCopy,
  FMX.Forms,
  ButtonStyleForm in 'ButtonStyleForm.pas' {Form25};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm25, Form25);
  Application.Run;
end.
