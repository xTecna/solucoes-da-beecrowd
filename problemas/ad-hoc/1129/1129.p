var
  n, opcao, corretos, cor, i, j: int64;

begin
  read(n);
  while (n <> 0) do
  begin
    i := 0;
    while i < n do
    begin
      opcao := -1;
      corretos := 0;

      j := 0;
      while j < 5 do
      begin
        read(cor);
        if cor <= 127 then
        begin
          opcao := j;
          corretos := corretos + 1;
        end;

        j := j + 1;
      end;

      if corretos = 1 then
        writeln(Chr(65 + opcao))
      else
        writeln('*');

      i := i + 1;
    end;

    read(n);
  end;
end.
