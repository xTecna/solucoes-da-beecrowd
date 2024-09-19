var
  l, r: int64;

begin
  read(l);
  read(r);
  while (l <> 0) or (r <> 0) do
  begin  
    writeln(l + r);

    read(l);
    read(r);
  end;
end.
