var
n: int64;
teste: int64;

begin
	teste := 1;
	while true do
	begin
		readln(n);
		if n = -1 then
			break;

		writeln('Experiment ', teste, ': ', n div 2, ' full cycle(s)');
		teste := teste + 1;
	end;
end.
