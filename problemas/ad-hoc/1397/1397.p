var
  n, a, b, jogador1, jogador2, i: int64;

begin
  read(n);
  while (n <> 0) do
  begin
    jogador1 := 0;
    jogador2 := 0;
  
    i := 0;
    while i < n do
    begin
      read(a);
      read(b);

      if (a > b) then
        jogador1 := jogador1 + 1
      else
        if (a < b) then
          jogador2 := jogador2 + 1;
      
      i := i + 1;
    end;

    writeln(jogador1, ' ', jogador2);

    read(n);
  end;
end.
