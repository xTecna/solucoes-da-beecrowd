var
  a, n: int64;

function somaPA(a1, an, n: int64): int64;
begin
  somaPA := ((a1 + an) * n) div 2;
end;

begin
  read(a);

  read(n);
  while (n <= 0) do
    read(n);

  writeln(somaPA(a, a + n - 1, n));
end.