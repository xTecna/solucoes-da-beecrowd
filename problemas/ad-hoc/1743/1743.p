var
  i: int64;
  compativel: boolean;
  x, y: array[0..4] of int64;

begin
  i := 0;
  while i < 5 do
  begin
    read(x[i]);
    i := i + 1;
  end;

  i := 0;
  while i < 5 do
  begin
    read(y[i]);
    i := i + 1;
  end;

  compativel := true;
  i := 0;
  while i < 5 do
  begin
    if (x[i] = y[i]) then
    begin
      compativel := false;
      break;
    end;
    i := i + 1;
  end;

  if compativel then
    writeln('Y')
  else
    writeln('N');
end.
