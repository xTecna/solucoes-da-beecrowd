var
  nomes: array[1..4] of string;
  n, k, feedback: int64;

begin
  nomes[1] := 'Rolien';
  nomes[2] := 'Naej';
  nomes[3] := 'Elehcim';
  nomes[4] := 'Odranoel';

  read(n);
  while n > 0 do
  begin
    read(k);
    while k > 0 do
    begin
      read(feedback);
      writeln(nomes[feedback]);
      k := k - 1;
    end;
    n := n - 1;
  end;
end.
