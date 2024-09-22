var
  n, i: int64;
  linha, nome: string;

begin
  readln(n);

  i := 0;
  while (i < n) do
  begin
    readln(linha);
    nome := Copy(linha, 1, Pos(' ', linha) - 1);

    if (nome = 'Thor') then
      writeln('Y')
    else
      writeln('N');
      
    i := i + 1;
  end;
end.