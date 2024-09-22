var
  n, i, r1, r2: int64;

begin
  read(n);

  i := 0;
  while (i < n) do
  begin
    read(r1);
    read(r2);
    writeln(r1 + r2);
    i := i + 1;
  end;
end.