var
  n, x, i, dois, tres, quatro, cinco: int64;

begin
  read(n);

  i := 0;
  dois := 0;
  tres := 0;
  quatro := 0;
  cinco := 0;
  while (i < n) do
  begin
    read(x);
    if (x mod 2 = 0) then
      dois := dois + 1;
    if (x mod 3 = 0) then
      tres := tres + 1;
    if (x mod 4 = 0) then
      quatro := quatro + 1;
    if (x mod 5 = 0) then
      cinco := cinco + 1;
    i := i + 1;
  end;

  writeln(dois, ' Multiplo(s) de 2');
  writeln(tres, ' Multiplo(s) de 3');
  writeln(quatro, ' Multiplo(s) de 4');
  writeln(cinco, ' Multiplo(s) de 5');
end.
