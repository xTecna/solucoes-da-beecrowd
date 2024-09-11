var
  n, m, i: int64;

begin
  read(n);
  
  i := 0;
  while i < n do
  begin
    m := 1 + 4 * i;
    writeln(m, ' ', m + 1, ' ', m + 2, ' PUM');
    i := i + 1;
  end;
end.
