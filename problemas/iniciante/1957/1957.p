uses
  SysUtils;

var
  n, i: int64;
  retorno: string;
  
begin
  read(n);

  retorno := IntToHex(n, 10);
  i := 1;
  while (i <= Length(retorno)) and (retorno[i] = '0') do
    i := i + 1;

  retorno := Copy(retorno, i, Length(retorno) + 1);
  if (Length(retorno) = 0) then
    retorno := '0';
  
  writeln(retorno);
end.
