var
  i: int64;
  linha: string;
  
begin
  linha := '---------------------------------------';
  writeln(linha);

  i := 0;
  while i < 5 do
  begin
    writeln('|                                     |');
    i := i + 1;
  end;

  writeln(linha);
end.
