var
  t, i: int64;

begin
  read(t);
  
  i := 0;
  while i < 1000 do
  begin
    writeln('N[', i, '] = ', i mod t);
    i := i + 1;
  end;
end.