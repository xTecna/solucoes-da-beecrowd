var
  n, i: int64;
  a, b, c, media: double;

begin
  read(n);

  i := 0;
  while (i < n) do
  begin
    read(a);
    read(b);
    read(c);

    media := (2.0 * a + 3.0 * b + 5.0 * c) / 10.0;
    writeln(media:0:1);
  
    i := i + 1;
  end;
end.