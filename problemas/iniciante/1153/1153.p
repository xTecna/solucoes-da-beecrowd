var
  n, i: int64;
  f: array[1..14] of int64;

begin
  i := 1;
  while i < 15 do
  begin
    f[i] := -1;
    i := i + 1;
  end;
  f[1] := 1;

  read(n);
  i := 2;
  while i <= n do
  begin
    f[i] := i * f[i - 1];
    i := i + 1;
  end;

  writeln(f[n]);
end.