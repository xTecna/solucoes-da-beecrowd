uses
  SysUtils;

var
  m, n: int64;
  soma: string;

begin
  read(m);
  read(n);

  while (m <> 0) and (n <> 0) do
  begin
    soma := StringReplace(IntToStr(m + n), '0', '', [rfReplaceAll]);
    writeln(soma);

    read(m);
    read(n);
  end;
end.
