var
  i, n: int64;

begin
  i := 0;
  while i < 4 do
  begin
    read(n);
    if (n = 1) then
    begin
      writeln(i + 1);
      break;
    end;
    i := i + 1;
  end;
end.
