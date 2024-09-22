var
  n, i, j: int64;
  livro, temp: string;
  biblioteca: array of string;

begin
  while not Eof(input) do
  begin
    readln(n);

    SetLength(biblioteca, n);

    i := 0;
    while i < n do
    begin
      readln(livro);
      biblioteca[i] := livro;
      i := i + 1;
    end;

    i := 1;
    while i < n do
    begin
      j := i;
      while (j > 0) and (biblioteca[j - 1] > biblioteca[j]) do
      begin
        temp := biblioteca[j - 1];
        biblioteca[j - 1] := biblioteca[j];
        biblioteca[j] := temp;
        j := j - 1;
      end;
      i := i + 1;
    end;

    i := 0;
    while i < n do
    begin
      writeln(biblioteca[i]);
      i := i + 1;
    end;
  end;
end.
