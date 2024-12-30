procedure imprimeTriangulo(tamanho, deslocamento: int64);
var
i, asteriscos, espacos: int64;
begin
	asteriscos := 1;
	espacos := tamanho div 2 + deslocamento;

	while (asteriscos <= tamanho) do
	begin
		i := 0;
		while (i < espacos) do
		begin
			write(' ');
			i := i + 1;
		end;
		
		i := 0;
		while (i < asteriscos) do
		begin
			write('*');
			i := i + 1;
		end;

		writeln('');
		asteriscos += 2;
		espacos -= 1;
	end;
end;

var
n: int64;

begin
	while not Eof(input) do
	begin
		readln(n);
		imprimeTriangulo(n, 0);
		imprimeTriangulo(3, (n div 2) - 1);
		writeln('');
	end;
end.
