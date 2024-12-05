var
  l, c: int64;

begin
  read(l);
  read(c);

  writeln(l * c + (l - 1) * (c - 1));
  writeln(2 * (l + c - 2));
end.
