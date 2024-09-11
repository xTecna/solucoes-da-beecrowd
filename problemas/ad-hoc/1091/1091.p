var
  k, n, m, x, y, i: int64;

begin
  read(k);
  while (k <> 0) do
  begin
    read(n);
    read(m);
  
    i := 0;
    while i < k do
    begin
      read(x);
      read(y);

      x := x - n;
      y := y - m;

      if (x > 0) and (y > 0) then
        writeln('NE')
      else
        if (x > 0) and (y < 0) then
          writeln('SE')
        else
          if (x < 0) and (y > 0) then
            writeln('NO')
          else
            if (x < 0) and (y < 0) then
              writeln('SO')
            else
              writeln('divisa');

      i := i + 1;
    end;

    read(k);
  end;
end.
