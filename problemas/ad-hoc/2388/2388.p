var
n, v, t, resposta : int64;

begin
    read(n);

    resposta := 0;
    while (n > 0) do
    begin
        read(v);
        read(t);
        resposta := resposta + v * t;
        n := n - 1;
    end;

    writeln(resposta);
end.
