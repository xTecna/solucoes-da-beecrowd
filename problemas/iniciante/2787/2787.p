var
  l, c: int64;
  
begin
  read(l);
  read(c);
  
  writeln(1 - ((l mod 2) xor (c mod 2)));
end.
