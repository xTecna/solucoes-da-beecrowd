var
  i, j, temp: int64;
  numeros: array[0..2] of int64;

begin
  i := 0;
  while (i < 3) do
  begin
    read(numeros[i]);
    i := i + 1;
  end;

  i := 1;
  while i < 3 do
  begin
    j := i;
    while (j > 0) and (numeros[j - 1] > numeros[j]) do
    begin
      temp := numeros[j - 1];
      numeros[j - 1] := numeros[j];
      numeros[j] := temp;
      j := j - 1;
    end;
    i := i + 1;
  end;

  writeln(numeros[1]);
end.
