var
  i, n: int64;

begin
  read(n);

  i := 1;
  while i <= n do
  begin
    writeln(i, ' ', i * i, ' ', i * i * i);
    writeln(i, ' ', i * i + 1, ' ', i * i * i + 1);
    i := i + 1;
  end;
end.