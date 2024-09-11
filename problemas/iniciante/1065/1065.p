var
  i, x, pares: int64;

begin
  i := 0;
  pares := 0;
  while i < 5 do
  begin
    read(x);

    if (x mod 2 = 0) then
      pares := pares + 1;
  
    i := i + 1;
  end;

  write(pares);
  writeln(' valores pares');
end.