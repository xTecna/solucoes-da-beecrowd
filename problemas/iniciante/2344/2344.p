var
  n: int64;
  
begin
  read(n);

  if (n > 85) then
    writeln('A')
  else
    if (n > 60) then
      writeln('B')
    else
      if (n > 35) then
        writeln('C')
      else
        if (n > 0) then
          writeln('D')
        else
          writeln('E');
end.
