Scanf.scanf "%d\n" (fun c ->
	for i = 1 to c do
		Scanf.scanf "%d %d\n" (fun b e ->
			let resposta = ref "" in
			for j = b to e do
				resposta := !resposta ^ string_of_int j
			done;
			Printf.printf "%s" !resposta;
			let tamanho = String.length !resposta - 1 in
			for j = tamanho downto 0 do
				Printf.printf "%c" !resposta.[j]
			done;
			Printf.printf "\n")
	done;
)
