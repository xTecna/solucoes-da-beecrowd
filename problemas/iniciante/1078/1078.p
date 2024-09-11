var
  i, x: int64;

begin
  read(x);

  i := 1;
  while (i <= 10) do
  begin
    writeln(i, ' x ', x, ' = ', i * x);
    i := i + 1;
  end;
end.