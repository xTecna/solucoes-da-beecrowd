var
  i, j: int64;

begin
  i := 1;
  while i <= 9 do
  begin
    j := 7;
    while j >= 5 do
    begin
      writeln('I=', i, ' J=', j + i - 1);
      j := j - 1;
    end;
    i := i + 2;
  end;
end.
