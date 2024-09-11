var
  i, x: int64;

begin
  read(x);
  x := x + (1 - (x mod 2));

  i := 0;
  while (i < 6) do
  begin
    writeln(x + (2 * i));
    i := i + 1;
  end;
end.