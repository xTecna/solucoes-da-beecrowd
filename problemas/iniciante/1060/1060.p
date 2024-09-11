var
  i, positivos: int64;
  x: double;

begin
  i := 0;
  positivos := 0;
  while i < 6 do
  begin
    read(x);

    if (x > 0) then
      positivos := positivos + 1;
  
    i := i + 1;
  end;

  write(positivos);
  writeln(' valores positivos');
end.