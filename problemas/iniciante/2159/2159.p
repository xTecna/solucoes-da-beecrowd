var
  n: int64;

begin
  read(n);

  write((n/Ln(n)):0:1);
  write(' ');
  writeln((1.25506 * n/Ln(n)):0:1);
end.
