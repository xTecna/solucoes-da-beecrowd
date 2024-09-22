var
  n, k, i, j: int64;
  temp: string;
  alunos: array[0..100] of string;

begin
  read(n);
  read(k);
  readln(alunos[0]);

  i := 0;
  while (i < n) do
  begin
    readln(alunos[i]);
    i := i + 1;
  end;

  i := 1;
  while i < n do
  begin
    j := i;
    while (j > 0) and (alunos[j - 1] > alunos[j]) do
    begin
      temp := alunos[j - 1];
      alunos[j - 1] := alunos[j];
      alunos[j] := temp;
      j := j - 1;
    end;
    i := i + 1;
  end;

  writeln(alunos[k - 1]);
end.
