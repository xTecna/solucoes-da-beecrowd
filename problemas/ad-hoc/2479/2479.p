var
  temp: string;
  comportamento: char;
  criancas: array[0..100] of string;
  n, i, j, levadas, comportadas: int64;

begin
  read(n);
  readln(temp);

  i := 0;
  levadas := 0;
  comportadas := 0;
  while (i < n) do
  begin
    read(comportamento);
    
    if (comportamento = '+') then
      comportadas := comportadas + 1
    else
      levadas := levadas + 1;
    read(comportamento);

    readln(criancas[i]);
    
    i := i + 1;
  end;

  i := 1;
  while i < n do
  begin
    j := i;
    while (j > 0) and (criancas[j - 1] > criancas[j]) do
    begin
      temp := criancas[j - 1];
      criancas[j - 1] := criancas[j];
      criancas[j] := temp;
      j := j - 1;
    end;
    i := i + 1;
  end;

  i := 0;
  while i < n do
  begin
    writeln(criancas[i]);
    i := i + 1;
  end;
  writeln('Se comportaram: ', comportadas, ' | Nao se comportaram: ', levadas);
end.
