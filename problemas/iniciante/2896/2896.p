var
  t, n, k, i: int64;

begin
  read(t);

  i := 0;
  while i < t do
  begin
    read(n);
    read(k);

    writeln(n div k + n mod k);
  
    i := i + 1;
  end;
end.
