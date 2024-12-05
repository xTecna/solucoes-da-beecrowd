Scanf.scanf "%d\n" (fun n ->
	let anterior = ref (-1) in
	let resposta = ref 0 in
	for _ = 1 to n do
		Scanf.scanf "%d\n" (fun atual ->
			if (atual != !anterior) then (
				anterior := atual;
				resposta := !resposta + 1
			)
		)
	done;
	Printf.printf "%d\n" !resposta
)
