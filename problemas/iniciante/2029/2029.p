var
  pi, v, d, area, altura: double;

begin
  pi := 3.14;
  while not Eof(input) do
  begin
    readln(v);
    readln(d);

    d := d / 2.0;

    area := pi * d * d;
    altura := v / area;

    write('ALTURA = ');
    writeln(altura:0:2);
    write('AREA = ');
    writeln(area:0:2);
  end;
end.
