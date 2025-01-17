procedure imprimeA(n: int64);
var
i: int64;
begin
	i := 0;
	while (i < n) do
	begin
		write('a');
		i := i + 1;
	end;
end;

var
n, i: int64;
grito: string;

begin
	readln(n);

	write('Ent');
	imprimeA(n);
	write('o eh N');
	imprimeA(n);
	write('t');
	imprimeA(n);
	writeln('l!');
end.
