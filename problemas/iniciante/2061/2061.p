var
  acao: string;
  n, m, i: int64;

begin
  read(n);
  read(m);
  readln(acao);

  i := 0;
  while (i < m) do
  begin
    readln(acao);

    if (acao = 'fechou') then
      n := n + 1
    else
      n := n - 1;
  
    i := i + 1;
  end;

  writeln(n);
end.
