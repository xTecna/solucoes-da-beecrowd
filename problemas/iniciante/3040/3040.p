var
  n, altura, espessura, galhos, i: int64;

begin
  read(n);

  i := 0;
  while i < n do
  begin
    read(altura);
    read(espessura);
    read(galhos);

    if (200 <= altura) and (altura <= 300) and (50 <= espessura) and (150 <= galhos) then
      writeln('Sim')
    else
      writeln('Nao');
  
    i := i + 1;
  end;
end.
