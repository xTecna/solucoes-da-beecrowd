var
  i, x, soma: int64;

begin
  i := 0;
  soma := 0;
  while (i < 4) do
  begin
    read(x);
    soma := soma + x;
    i := i + 1;
  end;
  writeln(soma - 3);
end.