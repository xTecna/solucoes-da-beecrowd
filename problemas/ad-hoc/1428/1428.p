Uses math;

var
i, t, n, m: int64;

begin
	readln(t);

	i := 0;
	while (i < t) do
	begin
		read(n);
		readln(m);

		writeln(Ceil((n - 2) / 3.0) * Ceil((m - 2) / 3.0));

		i := i + 1;
	end;
end.
