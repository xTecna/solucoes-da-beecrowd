var
n, x, i, anterior, atual, acumulado, resposta: int64;

begin
	read(n);
	readln(x);

	i := 1;
	resposta := 1;
	acumulado := 1;

	read(anterior);
	while (i < n) do
	begin
		read(atual);

		if (atual - anterior <= x) then
			acumulado := acumulado + 1
		else
		begin
			if (acumulado > resposta) then
				resposta := acumulado;
			acumulado := 1;
		end;

		i := i + 1;
		anterior := atual;
	end;

	if (acumulado > resposta) then
		resposta := acumulado;

	writeln(resposta);
end.
