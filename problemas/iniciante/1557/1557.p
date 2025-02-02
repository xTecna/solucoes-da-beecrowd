uses
  SysUtils;

var
  n, i, j, limite: int64;

function potencia(base, expoente: int64): int64;
var
  p: int64;
begin
  if (expoente = 0) then
    potencia := 1
  else
    if (expoente = 1) then
      potencia := base
    else
      if (expoente mod 2 = 1) then
        potencia := base * potencia(base, expoente - 1)
      else
      begin
        p := potencia(base, expoente div 2);
        potencia := p * p;
      end;
end;

begin
  while true do
  begin
    read(n);

    if (n = 0) then
      break;

    i := 0;
    limite := Trunc(Ln(potencia(2, 2 * n - 2)) / Ln(10)) + 1;
    while (i < n) do
    begin
      write(StringOfChar(' ', limite - Length(IntToStr(potencia(2, i)))), potencia(2, i));
      j := 1;
      while (j < n) do
      begin
        write(StringOfChar(' ', limite + 1 - Length(IntToStr(potencia(2, i + j)))), potencia(2, i + j));
        j := j + 1;
      end;
      writeln('');
      i := i + 1;
    end;
    writeln('');
  end;
end.
