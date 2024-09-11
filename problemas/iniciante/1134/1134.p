var
  alcool, gasolina, diesel, codigo: int64;

begin
  alcool := 0;
  gasolina := 0;
  diesel := 0;
  
  while true do
  begin
    read(codigo);

    if (codigo = 1) then
      alcool := alcool + 1
    else
      if (codigo = 2) then
        gasolina := gasolina + 1
      else
        if (codigo = 3) then
          diesel := diesel +1
        else
          if (codigo = 4) then
            break;
  end;

  writeln('MUITO OBRIGADO');
  writeln('Alcool: ', alcool);
  writeln('Gasolina: ', gasolina);
  writeln('Diesel: ', diesel);
end.