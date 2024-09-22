var
  c, p, f: int64;

begin
  read(c);
  read(p);
  read(f);

  if p >= c * f then
    writeln('S')
  else
    writeln('N');
end.
