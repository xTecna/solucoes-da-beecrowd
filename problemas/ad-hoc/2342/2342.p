var
  n, p, q: int64;
  c: char;

begin
  read(n);
  
  read(p);
  read(c);
  read(c);
  read(q);

  if c = '+' then
    begin
      if p + q <= n then
        writeln('OK')
      else
        writeln('OVERFLOW');
    end
  else
    begin
      if p * q <= n then
        writeln('OK')
      else
        writeln('OVERFLOW');
    end
end.
