program ArcConsole101;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Arc_MoreClasses in 'Arc_MoreClasses.pas',
  ArcExperiments_Classes in 'ArcExperiments_Classes.pas';

begin
  try
    TMySimpleClass.CreateOnly;
    Log ('=====================');
    TMySimpleClass.TryFinally;
    Log ('=====================');
    TMySimpleClass.SetNil;
    Log ('=====================');
    TMyComplexClass.CreateOnly;
    // readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.


