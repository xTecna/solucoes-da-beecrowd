uses SysUtils;

var
c, b, e, i, j, k: int64;
resposta: array[1..1000000] of string;

begin
	readln(c);

	while (c > 0) do
	begin
		read(b);
		readln(e);

		k := 1;

		i := b;
		while (i <= e) do
		begin
			resposta[k] := IntToStr(i);
			k := k + 1;

			i := i + 1;
		end;

		i := k - 1;
		while (i > 0) do
		begin
			j := Length(resposta[i]);
			while (j > 0) do
			begin
				resposta[k] := Copy(resposta[i], j, 1);
				k := k + 1;

				j := j - 1;
			end;

			i := i - 1;
		end;

		i := 1;
		while (i < k) do
		begin
			write(resposta[i]);
			i := i + 1;
		end;
		writeln('');

		c := c - 1;
	end;
end.
