var
  x, z, soma, resposta: int64;

begin
  read(x);

  z := x;
  while (z <= x) do
    read(z);

  soma := x;
  resposta := 1;
  while (soma <= z) do
  begin
    soma := soma + x + resposta;
    resposta := resposta + 1;
  end;
  writeln(resposta);
end.