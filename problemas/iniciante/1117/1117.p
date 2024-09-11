var
  nota, media: double;
  notas: array[1..2] of double;

begin
  notas[1] := -1.0;
  notas[2] := -1.0;
  
  while (notas[2] = -1.0) do
  begin
    read(nota);

    if (0.0 <= nota) and (nota <= 10.0) then
    begin
      if notas[1] = -1.0 then
        notas[1] := nota
      else if notas[2] = -1.0 then
        notas[2] := nota;
    end
    else
      writeln('nota invalida');
  end;

  media := (notas[1] + notas[2]) / 2.0;

  write('media = ');
  writeln(media:0:2);
end.
