program Performance_Collections;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Diagnostics,
  PerformanceClasses in 'PerformanceClasses.pas',
  PerformanceCollections in 'PerformanceCollections.pas';

var
  sw: TStopWatch;

begin
  try
    sw := TStopWatch.StartNew;
    TSimpleClass.CreateMany;
    sw.Stop;
    Writeln ('CreateMany: ' + sw.ElapsedMilliseconds.ToString);

    sw := TStopWatch.StartNew;
    TSimpleClass.CreateManyConst;
    sw.Stop;
    Writeln ('CreateManyConst: ' + sw.ElapsedMilliseconds.ToString);

    sw := TStopWatch.StartNew;
    TSimpleClass.CreateManyNoARC;
    sw.Stop;
    Writeln ('CreateManyNoARC: ' + sw.ElapsedMilliseconds.ToString);

    // readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
