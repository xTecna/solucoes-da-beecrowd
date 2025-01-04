var
  senha: int64;

begin
  while not Eof(input) do
  begin
    readln(senha);
    writeln(senha - 1);
  end;
end.
