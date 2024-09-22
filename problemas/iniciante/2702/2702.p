function Max(a, b: int64): int64;
begin
  if a > b then
    Max := a
  else
    Max := b;
end;

var
  ca, ba, pa, cr, br, pr: int64;

begin
  read(ca);
  read(ba);
  read(pa);
  read(cr);
  read(br);
  read(pr);

  writeln(Max(cr - ca, 0) + Max(br - ba, 0) + Max(pr - pa, 0));
end.
