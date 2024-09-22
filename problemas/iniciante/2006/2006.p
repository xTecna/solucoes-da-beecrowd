var
  t, x, i, corretos: int64;

begin
  read(t);

  i := 0;
  corretos := 0;
  while (i < 5) do
  begin
    read(x);
    if (x = t) then
      corretos := corretos + 1;
    i := i + 1;
  end;

  writeln(corretos);
end.
