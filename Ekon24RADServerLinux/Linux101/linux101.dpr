program linux101;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Writeln('Hello EKON 24');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
