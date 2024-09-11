var
    segundos: int64;
    minutos: int64;
    horas: int64;

begin
    read(segundos);

    horas := segundos div 3600;
    segundos := segundos mod 3600;
    minutos := segundos div 60;
    segundos := segundos mod 60;

    write(horas);
    write(':');
    write(minutos);
    write(':');
    writeln(segundos);
end.
