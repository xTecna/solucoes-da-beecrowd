var
n, i, anterior, atual, resposta : int64;

begin
	readln(n);

	i := 0;
	resposta := 0;
	anterior := -1;
	while i < n do
	begin
		readln(atual);

		if atual <> anterior then
		begin
			anterior := atual;
			resposta := resposta + 1;
		end;

		i := i + 1;
	end;

	writeln(resposta);
end.
