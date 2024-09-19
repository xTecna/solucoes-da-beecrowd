var
  i, n: int64;

begin
  read(n);

  i := 1;
  while i <= n do
  begin
    if n mod i = 0 then
      writeln(i);
    i := i + 1;
  end;
end.