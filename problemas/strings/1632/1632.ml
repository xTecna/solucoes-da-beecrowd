let variacoes (letra : char) : int =
	if letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'S' then 3
	else 2
in
Scanf.scanf "%d" (fun n ->
	for i = 1 to n do
		Scanf.scanf "\n%s" (fun senha ->
			let upper_senha = String.uppercase_ascii senha in
			let resposta = ref 1 in
			for j = 0 to String.length senha - 1 do
				resposta := !resposta * variacoes(upper_senha.[j])
			done;
			Printf.printf "%d\n" !resposta)
	done)
