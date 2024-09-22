var
  p, r: int64;

begin
  read(p);
  read(r);

  if p = 1 then
    if r = 1 then
      writeln('A')
    else
      writeln('B')
  else
    writeln('C');
end.
