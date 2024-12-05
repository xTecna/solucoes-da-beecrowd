Scanf.scanf "%d %d\n" (fun n s ->
	let saldo = ref s in
	let resposta = ref s in
	for _ = 1 to n do
		Scanf.scanf "%d\n" (fun movimentacao ->
			saldo := movimentacao + !saldo;
			resposta := min !resposta !saldo)
	done;
	Printf.printf "%d\n" !resposta)
