function r(x, y: int64): int64;
begin
    r := (9 * x * x) + (y * y);
end;

function b(x, y: int64): int64;
begin
  b := (2 * x * x) + (25 * y * y);
end;

function c(x, y: int64): int64;
begin
  c := (-100 * x) + (y * y * y);
end;

var
    n, x, y, i, rafael, beto, carlos: int64;

begin
    read(n);

  i := 0;
  while i < n do
  begin
    read(x);
    read(y);

    rafael := r(x, y);
    beto := b(x, y);
    carlos := c(x, y);

    if (rafael > beto) and (rafael > carlos) then
      writeln('Rafael ganhou')
    else
      if (beto > rafael) and (beto > carlos) then
        writeln('Beto ganhou')
      else
        writeln('Carlos ganhou');
  
    i := i + 1;
  end;
end.
