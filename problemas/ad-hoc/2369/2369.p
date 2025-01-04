var
n, conta: int64;

begin
	readln(n);

	conta := 7;
	if (n > 100) then
	begin
		conta := conta + (n - 100) * 5;
		n := 100;
	end;
	if (n > 30) then
	begin
		conta := conta + (n - 30) * 2;
		n := 30;
	end;
	if (n > 10) then
	begin
		conta := conta + (n - 10);
	end;

	writeln(conta);
end.
