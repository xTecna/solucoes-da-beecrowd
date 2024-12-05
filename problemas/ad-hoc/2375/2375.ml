Scanf.scanf "%d\n" (fun diametro ->
	Scanf.scanf "%d %d %d\n" (fun altura largura profundidade ->
		if (diametro <= altura && diametro <= largura && diametro <= profundidade) then
			Printf.printf "S\n"
		else
			Printf.printf "N\n")
)
