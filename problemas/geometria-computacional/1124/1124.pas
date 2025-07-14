function distancia(x1, y1, x2, y2: double): double;
begin
	distancia := sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
end;

var
l, c, r1, r2, x1, y1, x2, y2, dist: double;

begin
	while true do
	begin
		read(l);
		read(c);
		read(r1);
		readln(r2);

		if (l = 0) and (c = 0) and (r1 = 0) and (r2 = 0) then
			break;

		x1 := r1;
		y1 := r1;
		x2 := l - r2;
		y2 := c - r2;

		dist := distancia(x1, y1, x2, y2);
		if (l < 2 * r1) or (c < 2 * r1) or (l < 2 * r2) or (c < 2 * r2) or (dist < r1 + r2) then
			writeln('N')
		else
			writeln('S');
	end;
end.
