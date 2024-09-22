function converteParaDecimal(numero: string): int64;
var
  potencia, i: int64;
  fatoriais: array of int64;
begin
  SetLength(fatoriais, 5);
  fatoriais[0] := 1;
  fatoriais[1] := 2;
  fatoriais[2] := 6;
  fatoriais[3] := 24;
  fatoriais[4] := 120;
  
  converteParaDecimal := 0;
  potencia := 0;

  i := Length(numero);
  while i > 0 do
  begin
    converteParaDecimal := converteParaDecimal + (Ord(numero[i]) - Ord('0')) * fatoriais[potencia
    potencia := potencia + 1;

    i := i - 1;
  end;
end;

var
  n: string;
begin
  readln(n);
  while n <> '0' do
  begin
    writeln(converteParaDecimal(n));
    readln(n);
  end;
end.
