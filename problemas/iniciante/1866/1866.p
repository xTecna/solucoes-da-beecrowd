var
  n, x, i: int64;

begin
  read(n);

  i := 0;
  while (i < n) do
  begin
    read(x);
    writeln(x mod 2);
    i := i + 1;
  end;
end.
