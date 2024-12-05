var
  n, i: int64;

begin
  read(n);
  
  i := 1;
  while i < 4 * n do
  begin
    writeln(i, ' ', i + 1, ' ', i + 2, ' PUM');
    i := i + 4;
  end;
end.
