var
  codigo, inter, gremio, empate, i, g: int64;

begin
  codigo := 0;
  inter := 0;
  gremio := 0;
  empate := 0;
  while (codigo <> 2) do
  begin
    read(i);
    read(g);

    if i > g then
      inter := inter + 1
    else
      if i = g then
        empate := empate + 1
      else
        gremio := gremio + 1;

    codigo := 0;
    while (codigo <> 1) and (codigo <> 2) do
    begin
      writeln('Novo grenal (1-sim 2-nao)');
      read(codigo);
    end;
  end;

  writeln(inter + gremio + empate, ' grenais');
  writeln('Inter:', inter);
  writeln('Gremio:', gremio);
  writeln('Empates:', empate);

  if (inter > gremio) and (inter > empate) then
    writeln('Inter venceu mais')
  else
    if (gremio > inter) and (gremio > empate) then
      writeln('Gremio venceu mais')
    else
      writeln('Nao houve vencedor');
end.