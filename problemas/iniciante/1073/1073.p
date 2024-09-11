var
  i, x: int64;

begin
  read(x);
  x := x - (x mod 2);

  i := 2;
  while i <= x do
  begin
    writeln(i, '^2 = ', i * i);  
    i := i + 2;
  end;
end.