program SearchBox;

uses
  Vcl.Forms,
  uSearchBox in 'uSearchBox.pas' {SearchBoxForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'TSearchBox Demo';
  Application.CreateForm(TSearchBoxForm, SearchBoxForm);
  Application.Run;
end.
