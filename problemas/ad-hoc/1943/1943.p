var
  k: int64;

begin
  read(k);

  if k = 1 then
    writeln('Top 1')
  else
    if k <= 3 then
      writeln('Top 3')
    else
      if k <= 5 then
        writeln('Top 5')
      else
        if k <= 10 then
          writeln('Top 10')
        else
          if k <= 25 then
            writeln('Top 25')
          else
            if k <= 50 then
              writeln('Top 50')
            else
              writeln('Top 100');
end.
