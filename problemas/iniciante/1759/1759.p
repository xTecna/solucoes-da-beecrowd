var
  n, i: int64;

begin
  read(n);

  write('Ho');
  i := 1;
  while (i < n) do
  begin
    write(' Ho');
    i := i + 1;
  end;
  writeln('!');
end.