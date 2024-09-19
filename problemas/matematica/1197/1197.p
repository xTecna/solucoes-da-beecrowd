var
  v, t: int64;

begin
  while not Eof(input) do
  begin
    read(v);
    if not Eof(input) then
    begin
      read(t);
      writeln(v * 2 * t);
    end;
  end;
end.
