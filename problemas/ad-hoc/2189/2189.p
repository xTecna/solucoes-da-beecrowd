var
n, k, i, numero, resposta : int64;

begin
	k := 1;
	while true do
	begin
		readln(n);

		if n = 0 then
			break;

		i := 1;
		resposta := -1;
		while i <= n do
		begin
			read(numero);

			if i = numero then
				resposta := i;

			i := i + 1;
		end;

		writeln('Teste ', k);
		writeln(resposta);
		writeln('');
		k := k + 1;
	end;
end.
