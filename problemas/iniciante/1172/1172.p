var
  i, x: int64;

begin
  i := 0;
  while i < 10 do
  begin
    read(x);

    if (x > 0) then
      writeln('X[', i, '] = ', x)
    else
      writeln('X[', i, '] = 1');
  
    i := i + 1;
  end;
end.