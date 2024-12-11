var
  a, b, c: int64;

begin
  read(a);
  read(b);
  read(c);

  if (a = b) or (a = c) or (b = c) or (a + b = c) or (a + c = b) or (b + c = a) then
    writeln('S')
  else
    writeln('N');
end.
