var
  i, j, n: int64;
  M: array[1..102, 1..102] of double;

begin
  readln(n);

  i := 1;
  while(i <= n + 1) do
  begin
    j := 1;
    while(j <= n + 1) do
    begin
      read(M[i, j]);
      j := j + 1;
    end;
    i := i + 1;
  end;

  i := 1;
  while(i <= n) do
  begin
    j := 1;
    while(j <= n) do
    begin
      if M[i, j] + M[i + 1, j] + M[i, j + 1] + M[i + 1, j + 1] >= 2 then
        write('S')
      else
        write('U');
      j := j + 1;
    end;
    writeln('');
    i := i + 1;
  end;
end.
