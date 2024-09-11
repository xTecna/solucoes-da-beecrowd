function quantidadeImpares(x, y: int64): int64;
begin
  quantidadeImpares := (y - x) div 2 + 1
end;

function somaPA(a1, an, n: int64): int64;
begin
  somaPA := (a1 + an) * n div 2
end;

var
  n, x, y, i, temp: int64;

begin
  read(n);

  i := 0;
  while i < n do
  begin
    read(x);
    read(y);
  
    if (x > y) then
    begin
      temp := x;
      x := y;
      y := temp;
    end;
  
    x := x + (abs(x) mod 2) + 1;
    y := y - (abs(y) mod 2) - 1;
  
    if x > y then
      writeln(0)
    else
      writeln(somaPA(x, y, quantidadeImpares(x, y)));

    i := i + 1;
  end;
end.
