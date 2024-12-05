var
	t, i, n : int64;

function somaPA(a1, an, n: int64): int64;
begin
	somaPA := (n * (a1 + an)) div 2;
end;

begin
	readln(t);

	i := 0;
	while (i < t) do
	begin
		readln(n);
		writeln(somaPA(1, n, n) + 1);

		i := i + 1;
	end;
end.
