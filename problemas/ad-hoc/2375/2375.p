var
diametro, altura, largura, profundidade : int64;

begin
	readln(diametro);
	read(altura);
	read(largura);
	read(profundidade);

	if (diametro <= altura) and (diametro <= largura) and (diametro <= profundidade) then
		writeln('S')
	else
		writeln('N');
end.
