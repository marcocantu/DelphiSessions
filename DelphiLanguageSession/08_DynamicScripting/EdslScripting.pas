unit EdslScripting;

interface

uses
  Rtti;

function Evaluate(const Line: string): TValue;

implementation

uses
  SysUtils,
  StdCtrls,
  Forms,
  Generics.Collections,
  Generics.Defaults,
  TypInfo, ClassicAppointment;

var
  Ctx: TRttiContext;
  Env: TObjectDictionary<string,TValue>;

type
  TToken = (tkEof, tkString, tkInteger, tkIdent, tkDot, tkLParen, tkRParen,
    tkComma, tkAssign, tkLet, tkCall, tkExit);

type
  TListHelper = class
  public
    class function ToArray<T>(AList: TList<T>): TArray<T>;
  end;

class function TListHelper.ToArray<T>(AList: TList<T>): TArray<T>;
var
  i: Integer;
begin
  SetLength(Result, AList.Count);
  for i := 0 to AList.Count - 1 do
    Result[i] := AList[i];
end;

function Evaluate(const Line: string): TValue;
var
  cp: PChar;
  token: TToken;
  text: string;

  procedure NextToken;

    procedure CheckKeyword;
    begin
      if text = 'let' then
        token := tkLet
      else if text = 'call' then
        token := tkCall
      else if text = 'exit' then
        token := tkExit;
    end;

  var
    start: PChar;
  begin
    while AnsiChar(cp^) in [#1..#32] do
      Inc(cp);
    if cp^ = #0 then
    begin
      token := tkEof;
      Exit;
    end;

    case cp^ of
      '(': token := tkLParen;
      ')': token := tkRParen;
      ',': token := tkComma;
      '=': token := tkAssign; // too lazy for two-char token
      '.': token := tkDot;
    else
      start := cp;
      if AnsiChar(cp^) in ['0'..'9'] then
      begin
        token := tkInteger;
        repeat
          Inc(cp);
        until not (AnsiChar(cp^) in ['0'..'9']);
        SetString(text, start, cp - start);
        Dec(cp); // for later inc
      end
      else if AnsiChar(cp^) in ['a'..'z', 'A'..'Z', '_'] then
      begin
        token := tkIdent;
        repeat
          Inc(cp);
        until not (AnsiChar(cp^) in ['a'..'z', 'A'..'Z', '_', '0'..'9']);
        SetString(text, start, cp - start);
        CheckKeyword;
        Dec(cp);
      end
      else if AnsiChar(cp^) = '''' then
      begin
        token := tkString;
        Inc(cp);
        start := cp;
        while not (AnsiChar(cp^) in [#0, '''']) do
          Inc(cp);
        if cp^ = #0 then
          raise Exception.Create('Unteminated string');
        SetString(text, start, cp - start);
        // bottom inc will skip closing '
      end
      else
        raise Exception.Create('Invalid character: #' + IntToStr(Ord(cp^)));
    end;
    Inc(cp); // assume one-char token
  end;

  procedure Expect(t: TToken);
  begin
    if token <> t then
      raise Exception.Create('Expected ' + GetEnumName(TypeInfo(TToken), Ord(t))
        + ', got ' + GetEnumName(TypeInfo(TToken), Ord(token)));
  end;

  procedure Eat(t: TToken);
  begin
    Expect(t);
    NextToken;
  end;

  function DoEval: TValue; forward;

  function DoArgs(Inst: TValue; Meth: TRttiMethod): TArray<TValue>;
  var
    args: TList<TValue>;
  begin
    Eat(tkLParen);
    args := TList<TValue>.Create;
    try
      // args.Add(inst);   // fixed, object is a separate form args
      while True do
        case token of
          tkRParen: Break;
        else
          args.Add(DoEval);
          if token = tkComma then
            NextToken
          else
            Break;
        end;

      Result := TListHelper.ToArray<TValue>(args);
    finally
      args.Free;
    end;
    Eat(tkRParen);
  end;

  function FindSym(t: TRttiType; const name: string): TRttiObject;
  begin
    if t = nil then
      raise Exception.Create('Empty has no members');
    Result := t.GetMethod(name);
    if Result = nil then
      Result := t.GetProperty(name);
    if Result = nil then
      Result := t.GetField(name);
    if Result = nil then
      raise Exception.CreateFmt('No member "%s" found', [name]);
  end;

  function DoEval: TValue;
  var
    // type of expression, if any
    t: TRttiType;
    // symbol we have parsed and may apply, or if we have no value, we are navigating
    sym: TRttiObject;
    args: TArray<TValue>;

    procedure EvalSym;
    begin
      if (sym <> nil) and not (sym is TRttiType) then
      begin
        if sym is TRttiMethod then
        begin
          // expect no args
          if Length(TRttiMethod(sym).GetParameters) > 1 then
            raise Exception.Create('Expected no-arg method');
          Result := TRttiMethod(sym).Invoke(Result, []); // not supported: statics, class methods
        end
        else if sym is TRttiProperty then
          Result := TRttiProperty(sym).GetValue(Result.AsObject)
        else if sym is TRttiField then
          Result := TRttiField(sym).GetValue(Result.AsObject)
        else
          raise Exception.Create('Unexpected symbol');
        sym := nil;
      end;
    end;

  begin
    // <integer> | <string> | <ident> ( '.' <ident> | '(' expr/','... ')' )*
    sym := nil;

    case token of
      tkExit:
        Halt(0);

      tkIdent:
      begin
        Result := Env[text];
        if Result.IsEmpty then
          t := nil
        else if Result.IsObject then
          t := Ctx.GetType(Result.AsObject.ClassType)
        else if Result.IsType<TClass> then
          t := Ctx.GetType(Result.AsType<TClass>)
        else
          t := Ctx.GetType(Result.TypeInfo);
        NextToken;

        while True do
        begin
          case token of

            tkLParen:
            begin
              if sym = nil then
                raise Exception.Create('Unexpected (');
              if not (sym is TRttiMethod) then
                raise Exception.Create('Expected a method');
              args := DoArgs(Result, sym as TRttiMethod);
              Result := TRttiMethod(sym).Invoke(Result, args);
              sym := nil;
            end;

            tkDot:
            begin
              if not Result.IsEmpty then
                EvalSym;
              NextToken;
              Expect(tkIdent);
              if t <> nil then
                sym := FindSym(t, text)
              else
                raise Exception.Create('Empty value has no members');
              NextToken;
            end;

            tkAssign:
            begin
              if sym = nil then
                raise Exception.Create('Unexpected =');
              NextToken;
              if sym is TRttiProperty then
                TRttiProperty(sym).SetValue(Result.AsObject, DoEval)
              else if sym is TRttiField then
                TRttiField(sym).SetValue(Result.AsObject, DoEval)
              else
                raise Exception.Create('Expected a field or property');
              sym := nil;
            end;

          else
            Break;
          end;
        end;
        EvalSym;
      end; // tkIdent

      tkString:
      begin
        Result := text;
        NextToken;
      end;

      tkInteger:
      begin
        Result := StrToInt(text);
        NextToken;
      end;

    end; // case
  end;

  function DoLet: TValue;
  var
    name: string;
  begin
    // let <ident> = expr
    Eat(tkLet);
    name := text;
    Eat(tkIdent);
    Eat(tkAssign);
    Result := DoEval;
    Expect(tkEof);
    Env.AddOrSetValue(name, Result);
  end;

begin
  cp := PChar(Line);
  NextToken;
  case token of
    tkLet: Result := DoLet;
  else
    Result := DoEval;
  end;
  Expect(tkEof);
end;

{ The hack language implemented herein is not very suitable as a base
  for building a scripting language - it would be better to build and
  interpret trees, at a minimum - but it serves to demo what is possible.

  The interpreter understands a very limited set of instructions:

  * exit

  Exits the interpreter:

        exit

  * definitions

  New variables are created with the 'let' syntax:

    'let' <identifier> '=' <expression>

  For example:

        let x = 42

  or

    let x = TForm.Create(nil)

  * expressions

  Expressions can be standalone, in which case their value is printed on
  the console, or they can be part of a definition or recursively used
  in an expression, such as an argument for a method call.

  Syntax:

    atom ::= <integer> | <string> | <identifier> ;

    expression ::= <atom>
                   ( '.' <identifier>
                         ( '=' <expression>  // property | field assignment
                         | '(' [argList] ')' // method | constructor call
                         |                   // (nothing) property | field access | no-arg method call
                         )
                   )* ;

    argList ::= <expression> (',' <expression>) ;

  For example:

        let x = TForm.Create(nil)
        x.Caption = 'Hello there'
        x.FName = 'Foo'
        x.ShowModal

        let b = TButton.Create(x)
        b.Parent = x
        b.Caption = 'Click Me!'
        b.ModalResult = 42

        x.ShowModal

  etc. }

procedure StartUpScripting;
var
  t: TRttiType;
begin
    Ctx := TRttiContext.Create;
    // Case-insensitive dictionary
    Env := TObjectDictionary<string,TValue>.Create(
      TEqualityComparer<string>.Construct(
        SameText,
        function(const Text: string): Integer
        var
          upper: string;
        begin
          upper := AnsiUpperCase(Text);
          Result := BobJenkinsHash(Pointer(upper)^, Length(upper), 0);
        end));

      Ctx := TRttiContext.Create;

      // Initialize environment
      Env.Add('nil', TValue.Empty);
      Env.Add('True', True);
      Env.Add('False', False);
      // Ensure these guys are in, as type rooting is weak linked.
      Env.AddOrSetValue('TForm', TForm);
      Env.AddOrSetValue('TButton', TButton);
      Env.AddOrSetValue('TStdAppointment', TStdAppointment);
      for t in ctx.GetTypes do
        if t.IsInstance then
          Env.AddOrSetValue(t.Name, t.AsInstance.MetaclassType);
      Env.Add('Application', Application);
end;

initialization
  StartUpScripting;

finalization
      Env.Free;
      Ctx.Free;


end.
