var
n, i: int64;
p, g, menor_preco: double;

begin
	readln(n);

	i := 0;
	menor_preco := 1000.0;
	while (i < n) do
	begin
		read(p);
		readln(g);

		if (p / g < menor_preco) then
			menor_preco := p / g;

		i := i + 1;
	end;

	writeln((1000 * menor_preco):0:2);
end.
