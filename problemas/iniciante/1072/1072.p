var
  i, n, x, dentro, fora: int64;

begin
  read(n);

  i := 0;
  dentro := 0;
  fora := 0;
  while i < n do
  begin
    read(x);

    if (x >= 10) and (x <= 20) then
      dentro := dentro + 1
    else
      fora := fora + 1;
  
    i := i + 1;
  end;

  writeln(dentro, ' in');
  writeln(fora, ' out');
end.