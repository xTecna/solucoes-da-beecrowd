var
  n, i, x, vitorias: int64;

begin
  read(n);

  i := 0;
  vitorias := 0;
  while i < n do
  begin
    read(x);

    if x <> 1 then
      vitorias := vitorias + 1;
  
    i := i + 1;
  end;
  
  writeln(vitorias);
end.
