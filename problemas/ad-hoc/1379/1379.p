var
a, b: int64;

begin
	while (true) do
	begin
		read(a);
		readln(b);

		if (a = 0) and (b = 0) then
			break;
		
		writeln(2 * a - b);
	end;
end.
