var
  i: int64;

begin
  i := 97;
  while i <= 122 do
  begin
    writeln(i, ' e ', Chr(i));
    i := i + 1;
  end;
end.
