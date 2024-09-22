var
  x, m: int64;

begin
  while (true) do
  begin
    read(x);
    read(m);

    if (x = 0) and (m = 0) then
      break;

    writeln(x * m);
  end;
end.
