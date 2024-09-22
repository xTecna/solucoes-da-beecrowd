function StrToInt(s: string): integer;
begin
  if Length(s) = 1 then
    StrToInt := Ord(s[1]) - Ord('0')
  else
    StrToInt := 10 * (Ord(s[1]) - Ord('0')) + Ord(s[2]) - Ord('0');
end;

var
  pessoas, jipes, numero: int64;
  linha, palavra: string;

begin
  pessoas := 0;
  jipes := 0;

  readln(linha);
  palavra := Copy(linha, 1, 5);
  while palavra <> 'ABEND' do
  begin
    palavra := Copy(linha, 1, 6);
    numero := StrToInt(Copy(linha, 8, Length(linha)));

    if palavra = 'SALIDA' then
    begin
      pessoas := pessoas + numero;
      jipes := jipes + 1;
    end
    else
    begin
      pessoas := pessoas - numero;
      jipes := jipes - 1;
    end;

    readln(linha);
    palavra := Copy(linha, 1, 5);
  end;

  writeln(pessoas);
  writeln(jipes);
end.
