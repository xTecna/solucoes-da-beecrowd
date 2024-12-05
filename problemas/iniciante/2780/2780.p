var
  d: int64;

begin
  read(d);

  if (d <= 800) then
    writeln(1)
  else
    if (d <= 1400) then
      writeln(2)
    else
      writeln(3);
end.
