function Max(a, b: int64): int64;
begin
    if a > b then
    Max := a
  else
    Max := b;
end;

var
  m, a, b, c: int64;

begin
  read(m);
  read(a);
  read(b);

  c := m - a - b;

  writeln(Max(a, Max(b, c)));
end.
