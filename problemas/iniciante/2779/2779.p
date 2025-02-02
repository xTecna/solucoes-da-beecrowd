var
  n, m, x, i, contador: int64;
  figurinhas: array[1..100] of int64;

begin
  read(n);
  read(m);

  i := 1;
  while i <= 100 do
  begin
    figurinhas[i] := 0;
    i := i + 1;
  end;

  i := 0;
  while i < m do
  begin
    read(x);
    figurinhas[x] := 1;
  
    i := i + 1;
  end;

  i := 1;
  contador := 0;
  while i <= n do
  begin
    if figurinhas[i] = 0 then
      contador := contador + 1;
  
    i := i + 1;
  end;

  writeln(contador);
end.
