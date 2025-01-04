var
b : int64;
t : int64;

begin
	readln(b);
	readln(t);

	if (b + t > 160) then
		writeln(1)
	else if (b + t < 160) then
		writeln(2)
	else
		writeln(0);
end.
