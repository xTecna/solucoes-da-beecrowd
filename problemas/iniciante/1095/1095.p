var
  i: int64;

begin
  i := 0;
  while i < 13 do
  begin
    writeln('I=', 1 + 3 * i, ' J=', 60 - 5 * i);
    i := i + 1;
  end;
end.