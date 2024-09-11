var
  x, y, soma, i, temp: int64;

begin
  read(x);
  read(y);

  if (x > y) then
  begin
    temp := x;
    x := y;
    y := temp;
  end;
  
  i := x;
  soma := 0;
  while i <= y do
  begin
    if (i mod 13 <> 0) then
      soma := soma + i;
    i := i + 1;
  end;

  writeln(soma);
end.
