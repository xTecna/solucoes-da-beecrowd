var
  n, a, b: int64;

begin
  read(n);
  read(a);
  read(b);

  if a + b <= n then
    writeln('Farei hoje!')
  else
    writeln('Deixa para amanha!');
end.
