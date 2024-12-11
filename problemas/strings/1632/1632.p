function variacoes(letra: string): int64;
begin
	if (letra = 'A') or (letra = 'E') or (letra = 'I') or (letra = 'O') or (letra = 'S') then
		variacoes := 3
	else
		variacoes := 2;
end;

var
n, i, j, resposta : int64;
senha : string;

begin
	readln(n);

	i := 0;
	while (i < n) do
	begin
		readln(senha);
		senha := upcase(senha);

		j := 1;
		resposta := 1;
		while (j <= Length(senha)) do
		begin
			resposta := resposta * variacoes(Copy(senha, j, 1));

			j := j + 1;
		end;

		writeln(resposta);

		i := i + 1;
	end;
end.
