var
n, i, x, resposta: int64;

begin
	readln(n);

	i := 0;
	resposta := 0;
	while (i < n) do
	begin
		read(x);
		resposta := resposta + x;

		i := i + 1;
	end;

	writeln(resposta - n);
end.
