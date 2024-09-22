var
  n, x, y, i: int64;

begin
  read(n);

  i := 0;
  while i < n do
  begin
    read(x);
    read(y);

    writeln((x * y) div 2, ' cm2');

    i := i + 1;
  end;
end.
