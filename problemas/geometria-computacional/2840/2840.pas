var
  r, l: int64;
  pi, v: double;

begin
  read(r);
  read(l);

  pi := 3.1415;
  v := (4.0 * pi * r * r * r) / 3.0;

  writeln(trunc(l / v));
end.