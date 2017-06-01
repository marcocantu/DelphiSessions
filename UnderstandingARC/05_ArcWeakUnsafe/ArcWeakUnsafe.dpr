program ArcWeakUnsafe;

uses
  System.StartUpCopy,
  FMX.Forms,
  ArcWeakUnsafe_Form in 'ArcWeakUnsafe_Form.pas' {Form25};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm25, Form25);
  Application.Run;
end.
