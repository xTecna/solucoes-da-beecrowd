var
n, i, j, pos1, pos2: int64;
palavra1, palavra2, secreta: string;

begin
	readln(n);

	i := 0;
	while i < n do
	begin
		readln(palavra1);
		readln(palavra2);
		readln(secreta);

		j := 1;
		pos1 := -1;
		pos2 := -1;
		while j <= Length(secreta) do
		begin
			if secreta[j] = '_' then
				if pos1 = -1 then
					pos1 := j
				else
					pos2 := j;

			j := j + 1;
		end;

		if (palavra1[pos1] = palavra2[pos2]) or (palavra1[pos2] = palavra2[pos1]) then
			writeln('Y')
		else
			writeln('N');

		i := i + 1;
	end;
end.
