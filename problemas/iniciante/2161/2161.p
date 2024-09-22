var
  i, n: int64;
  resposta: double;

begin
  read(n);

  resposta := 0.0;
  if (n = 0) then
    resposta := 3.0
  else
  begin
    resposta := 6.0;
    i := 1;
    while i < n do
    begin
      resposta := 6.0 + 1.0 / resposta;
      i := i + 1;
    end;
    resposta := 3.0 + 1.0 / resposta;
  end;

  writeln(resposta:0:10);
end.
