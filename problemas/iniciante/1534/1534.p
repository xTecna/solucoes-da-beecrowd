var
  n, i, j: int64;

begin
  while not Eof(input) do
  begin
    read(n);

    i := 1;
    while (i <= n) do
    begin
      j := 1;
      while (j <= n) do
      begin
        if (i = n - j + 1) then
          write(2)
        else
          if (i = j) then
            write(1)
          else
            write(3);
        j := j + 1;
      end;
      writeln('');
      i := i + 1;
    end;
  end;
end.
