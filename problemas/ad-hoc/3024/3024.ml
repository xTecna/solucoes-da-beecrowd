Scanf.scanf "%d %d\n" (fun n x ->
	let anterior = ref 0 in
	Scanf.scanf "%d" (fun a ->
		anterior := a);
	let resposta = ref 1 in
	let acumulado = ref 1 in
	for i = 2 to n do
		Scanf.scanf " %d" (fun atual ->
			if (atual - !anterior <= x) then
				acumulado := !acumulado + 1
			else (
				resposta := max !resposta !acumulado;
				acumulado := 1
			);
			anterior := atual)
	done;
	resposta := max !resposta !acumulado;
	Printf.printf "%d\n" !resposta
)
