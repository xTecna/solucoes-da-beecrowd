var
  s: string;
  i, soma: int64;

begin
  readln(s);

  i := 1;
  soma := 0;
  while (i <= Length(s)) do
  begin
    soma := soma + (Ord(s[i]) - Ord('0'));
    i := i + 1;
  end;
  writeln(s, soma mod 2);
end.
