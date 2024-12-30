function MDC(a, b: int64): int64;
begin
	if b = 0 then
		MDC := a
	else
		MDC := MDC(b, a mod b);
end;

var
x, y : int64;

begin
	while not Eof(input) do
	begin
		read(x);
		readln(y);

		writeln(2 * (x div MDC(x, y) + y div MDC(x, y)))
	end;
end.
