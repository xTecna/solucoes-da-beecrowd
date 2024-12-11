function achou(texto, trecho: string): boolean;
var
	i, n: int64;
begin
	achou := False;
	n := Length(trecho);

	i := 1;
	while i <= Length(texto) do
	begin
		if (Copy(texto, i, n) = trecho) then
		begin
			achou := True;
			break;
		end;

		i := i + 1;
	end;
end;

var
n, i : int64;
cartas : string;

begin
	readln(n);

	i := 0;
	while (i < n) do
	begin
		readln(cartas);

		if (achou(cartas, 'A')) and (achou(cartas, 'K')) and (achou(cartas, 'Q')) and (achou(cartas, 'J')) then
			writeln('Aaah muleke')
		else
			writeln('Ooo raca viu');

		i := i + 1;
	end;
end.
