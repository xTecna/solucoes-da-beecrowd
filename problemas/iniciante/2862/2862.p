var
  i, c, n: int64;

begin
  read(c);
  
  i := 0;
  while i < c do
  begin
    read(n);

    if (n <= 8000) then
      writeln('Inseto!')
    else
      writeln('Mais de 8000!');
    
    i := i + 1;
  end;
end.
