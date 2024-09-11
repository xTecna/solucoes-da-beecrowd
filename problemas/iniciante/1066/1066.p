var
  i, x, pares, impares, positivos, negativos: int64;

begin
  i := 0;
  pares := 0;
  impares := 0;
  positivos := 0;
  negativos := 0;
  while i < 5 do
  begin
    read(x);

    if (x mod 2 = 0) then
      pares := pares + 1
    else
      impares := impares + 1;

    if (x > 0) then
      positivos := positivos + 1
    else if (x < 0) then
      negativos := negativos + 1;
  
    i := i + 1;
  end;

  write(pares);
  writeln(' valor(es) par(es)');
  write(impares);
  writeln(' valor(es) impar(es)');
  write(positivos);
  writeln(' valor(es) positivo(s)');
  write(negativos);
  writeln(' valor(es) negativo(s)');
end.