var
  t: string;
  media: double;
  i, j, quantidade: int64;
  M: array[1..12, 1..12] of double;

begin
  readln(t);

  i := 1;
  while(i <= 12) do
  begin
    j := 1;
    while(j <= 12) do
    begin
      readln(M[i, j]);
      j := j + 1;
    end;
    i := i + 1;
  end;

  i := 1;
  media := 0.0;
  quantidade := 0;
  while(i <= 12) do
  begin
    j := i + 1;
    if 14 - i > j then
      j := 14 - i;
    while(j <= 12) do
    begin
      media := media + M[i, j];
      quantidade := quantidade + 1;
      j := j + 1;
    end;
    i := i + 1;
  end;

  if t = 'M' then
    media := media / quantidade;

  writeln(media:0:1);
end.
