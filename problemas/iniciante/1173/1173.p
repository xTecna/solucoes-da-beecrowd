var
  x, i: int64;

begin
  read(x);

  i := 0;
  while (i < 10) do
  begin
    writeln('N[', i, '] = ', x);
    x := x * 2;
    i := i + 1;
  end;
end.