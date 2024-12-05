var
n, saldo, i, movimentacao, resposta : int64;

begin
	read(n);
	readln(saldo);

	i := 0;
	resposta := saldo;
	while i < n do
	begin
		readln(movimentacao);
		saldo := saldo + movimentacao;

		if saldo < resposta then
			resposta := saldo;

		i := i + 1;
	end;

	writeln(resposta);
end.
