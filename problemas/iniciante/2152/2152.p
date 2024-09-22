procedure imprimeNumero(n: int64);
begin
  if (n < 10) then
    write('0', n)
  else
    write(n);
end;

var
  n, h, m, o, i: int64;

begin
  read(n);

  i := 0;
  while i < n do
  begin
    read(h);
    read(m);
    read(o);

    if (o = 1) then
    begin
      imprimeNumero(h);
      write(':');
      imprimeNumero(m);
      writeln(' - A porta abriu!');
    end
    else
    begin
      imprimeNumero(h);
      write(':');
      imprimeNumero(m);
      writeln(' - A porta fechou!');
    end;

    i := i + 1;
  end;
end.
