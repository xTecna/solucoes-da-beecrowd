Scanf.scanf "%d\n" (fun n ->
	let menor_preco = ref 1000.0 in
	for i = 1 to n do
		Scanf.scanf "%f %f\n" (fun p g ->
			menor_preco := min !menor_preco (p /. g))
	done;
	Printf.printf "%.2f\n" (1000.0 *. !menor_preco)
)
