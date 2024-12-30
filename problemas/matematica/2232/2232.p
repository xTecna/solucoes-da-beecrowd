var
  t, n, i, j, p: int64;

begin
  read(t);

  i := 0;
  while i < t do
  begin
    read(n);

    p := 1;
    j := 0;
    while j < n do
    begin
      p := p * 2;
      j := j + 1;
    end;
    writeln(p - 1);

    i := i + 1;
  end;
end.
