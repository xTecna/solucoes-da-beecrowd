var
  p1, c1, p2, c2, diferenca: int64;

begin
  read(p1);
  read(c1);
  read(p2);
  read(c2);

  diferenca := p2 * c2 - p1 * c1;

  if diferenca < 0 then
    writeln('-1')
  else
    if diferenca = 0 then
      writeln('0')
    else
      writeln('1');
end.
