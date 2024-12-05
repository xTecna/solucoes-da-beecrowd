var
i, maior, numero : int64;

begin
	read(maior);

	i := 1;
	while not Eof(input) do
	begin
		read(numero);

		if numero > maior then
			maior := numero;

		i := i + 1;
	end;

	writeln(maior);
end.
