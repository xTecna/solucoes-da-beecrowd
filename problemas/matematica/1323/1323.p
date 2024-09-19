var
  n: int64;
  f: array[0..101] of int64;

function feynman(x: Integer): int64;
begin
  if f[x] = 0 then
    f[x] := (x * x) + feynman(x - 1);
  feynman := f[x];
end;

begin
  FillChar(f, SizeOf(f), 0);
  f[1] := 1;

  read(n);
  while (n <> 0) do
  begin
    writeln(feynman(n));
    read(n);
  end;
end.
