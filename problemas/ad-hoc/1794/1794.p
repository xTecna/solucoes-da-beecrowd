var
  n, la, lb, sa, sb: int64;

begin
  read(n);

  read(la);
  read(lb);

  read(sa);
  read(sb);

  if (la <= n) and (n <= lb) and (sa <= n) and (n <= sb) then
    writeln('possivel')
  else
    writeln('impossivel');
end.
