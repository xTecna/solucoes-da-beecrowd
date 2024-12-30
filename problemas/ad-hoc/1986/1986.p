function valor(letra: char): int64;
begin
	if (letra >= '0') and (letra <= '9') then
		valor := Ord(letra) - Ord('0')
	else
		if (letra >= 'a') and (letra <= 'f') then
			valor := Ord(letra) - Ord('a') + 10
		else
			valor := Ord(letra) - Ord('A') + 10;
end;

function convertePraDecimal(numero: string): int64;
var
	i: int64;
begin
	i := 1;
	convertePraDecimal := 0;
	while (i <= Length(numero)) do
	begin
		convertePraDecimal := convertePraDecimal * 16;
		convertePraDecimal := convertePraDecimal + valor(numero[i]);
		i := i + 1;
	end;
end;

var
c: char;
n: int64;
letra: string;

begin
	readln(n);

	letra := '';
	while not Eof(input) do
	begin
		letra := '';
		while not Eof(input) do
		begin
			read(c);
			if (c = ' ') then
				break;
			letra := letra + c;
			if eoln then
				readln;
		end;

		if (Length(letra) > 0) then
			write(Char(convertePraDecimal(letra)));
	end;
	writeln('');
end.
