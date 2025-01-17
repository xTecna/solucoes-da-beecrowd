var
hamekame: string;
n, k, i, tamanho, tamanho1, tamanho2: int64;

begin
	readln(n);

	k := 0;
	while (k < n) do
	begin
		readln(hamekame);

		i := 1;
		while (hamekame[i] <> 'a') do
		begin
			i := i + 1;
		end;

		tamanho1 := 0;
		while (hamekame[i] = 'a') do
		begin
			tamanho1 := tamanho1 + 1;
			i := i + 1;
		end;

		while (hamekame[i] <> 'a') do
		begin
			i := i + 1;
		end;

		tamanho2 := 0;
		while (hamekame[i] = 'a') do
		begin
			tamanho2 := tamanho2 + 1;
			i := i + 1;
		end;

		write('k');
		i := 0;
		tamanho := tamanho1 * tamanho2;
		while (i < tamanho) do
		begin
			write('a');
			i := i + 1;
		end;
		writeln('');

		k := k + 1;
	end;
end.
