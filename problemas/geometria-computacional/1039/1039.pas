function distancia(x1, y1, x2, y2: double): double;
begin
	distancia := sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
end;

var
x1, y1, r1, x2, y2, r2, dist: double;

begin
	while not Eof(input) do
	begin
		read(r1);
		read(x1);
		read(y1);
		read(r2);
		read(x2);
		readln(y2);

		dist := distancia(x1, y1, x2, y2);
		if dist <= (r1 - r2) then
			writeln('RICO')
		else
			writeln('MORTO');
	end;
end.
