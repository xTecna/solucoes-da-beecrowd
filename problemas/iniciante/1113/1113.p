var
  x, y: int64;

begin
  while true do
  begin
    read(x);
    read(y);

    if (x = y) then
      break;

    if (x < y) then
      writeln('Crescente')
    else
      writeln('Decrescente');
  end;
end.