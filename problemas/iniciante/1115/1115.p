var
  x, y: int64;

begin
  while true do
  begin
    read(x);
    read(y);

    if (x = 0) or (y = 0) then
      break;

    if (x > 0) then
      if (y > 0) then
        writeln('primeiro')
      else
        writeln('quarto')
    else
      if (y > 0) then
        writeln('segundo')
      else
        writeln('terceiro');
  end;
end.