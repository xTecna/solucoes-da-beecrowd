Uses sysutils;

var
linha: string;
n, parte1, parte2, parte3: int64;

begin
	readln(n);

	while (n > 0) do
	begin
		readln(linha);

		parte1 := StrToInt(copy(linha, 3, 2));
		parte2 := StrToInt(copy(linha, 6, 3));
		parte3 := StrToInt(copy(linha, 12, 2));

		writeln(parte1 + parte2 + parte3);

		n := n - 1;
	end;
end.
