var
c, i, numero, resposta : int64;

begin
	readln(c);

	i := 0;
	resposta := 0;
	while (i < c) do
	begin
		read(numero);
		resposta := resposta + numero;
		i := i + 1;
	end;

	writeln(resposta);
end.
