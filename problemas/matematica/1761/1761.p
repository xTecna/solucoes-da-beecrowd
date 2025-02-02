Uses
math;

var
pi, a, b, c: double;

begin
	pi := 3.141592654;
	while not Eof(input) do
	begin
		read(a);
		read(b);
		readln(c);

		writeln((5.0 * (Tan(a * pi / 180.0) * b + c)):0:2);
	end;
end.
