var
  n, x, y, i, temp: int64;

begin
  read(n);

  i := 0;
  while i < n do
  begin
    read(x);
    read(y);
  
    if (y = 0) then
      writeln('divisao impossivel')
    else
      writeln((x/y):0:1);

    i := i + 1;
  end;
end.
