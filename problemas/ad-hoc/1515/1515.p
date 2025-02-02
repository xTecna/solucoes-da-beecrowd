var
letra: char;
planeta, resposta: string;
n, i, ano, tempo, menor_ano: int64;

begin
	while (true) do
	begin
		readln(n);
		if (n = 0) then
			break;
		
		i := 0;
		resposta := '';
		menor_ano := 9999;
		while (i < n) do
		begin
			planeta := '';
			read(letra);
			while (letra <> ' ') do
			begin
				planeta := planeta + letra;
				read(letra);
			end;

			read(ano);
			readln(tempo);

			if (ano - tempo < menor_ano) then
			begin
				menor_ano := ano - tempo;
				resposta := planeta;
			end;

			i := i + 1;
		end;
		
		writeln(resposta);
	end;
end.
