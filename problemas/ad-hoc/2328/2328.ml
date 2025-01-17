Scanf.scanf "%d\n" (fun n ->
	let resposta = ref 0 in
	for i = 1 to n do
		Scanf.scanf "%d " (fun x ->
			resposta := !resposta + x)
	done;
	Printf.printf "%d\n" (!resposta - n))
