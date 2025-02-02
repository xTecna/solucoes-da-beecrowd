var
mesas: array[1..1000] of int64;
n, q, i, e, a, b, temp, mesa, resposta: int64;

begin
	readln(n);
	i := 0;
	while (i <= n) do
	begin
		mesas[i] := i;
		i := i + 1;
	end;

	readln(q);

	i := 0;
	while (i < q) do
	begin
		read(e);

		if (e = 1) then
			begin
				read(a);
				readln(b);

				temp := mesas[a];
				mesas[a] := mesas[b];
				mesas[b] := temp;
			end
		else
			begin
				readln(a);

				resposta := 0;
				mesa := mesas[a];
				while (mesa <> a) do
				begin
					resposta := resposta + 1;
					mesa := mesas[mesa];
				end;

				writeln(resposta);
			end;

		i := i + 1;
	end;
end.
