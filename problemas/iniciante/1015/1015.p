var
    x1: double;
    y1: double;
    x2: double;
    y2: double;

begin
    read(x1);
    read(y1);
    read(x2);
    read(y2);
    writeln((sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))):0:4);
end.
