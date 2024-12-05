var
n, i, latas, copos, resposta: int64;

begin
    read(n);

    i := 0;
    resposta := 0;
    while (i < n) do
    begin
        read(latas);
        read(copos);

        if latas > copos then
            resposta := resposta + copos;

        i := i + 1;
    end;

    writeln(resposta);
end.
