var
  n, i, x, y: int64;

function somaPA(a1, an, n: int64): int64;
begin
  somaPA := ((a1 + an) * n) div 2;
end;

begin
  read(n);

  i := 0;
  while (i < n) do
  begin
    read(x);
    read(y);

    x := x + 1 - abs(x mod 2);

    writeln(somaPA(x, x + 2 * (y - 1), y));
    
    i := i + 1;
  end;
end.