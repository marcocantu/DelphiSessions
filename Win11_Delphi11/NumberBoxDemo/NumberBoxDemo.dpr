program NumberBoxDemo;

uses
  Vcl.Forms,
  NumberBoxDemo_Unit1 in 'NumberBoxDemo_Unit1.pas' {NumBoxDemo},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TNumBoxDemo, NumBoxDemo);
  Application.Run;
end.
