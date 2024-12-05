Scanf.scanf "%d\n" (fun n ->
	let resposta = ref 0 in
	for i = 1 to n do
		Scanf.scanf "%d %d\n" (fun latas copos ->
			if (latas > copos) then resposta := !resposta + copos)
	done;
	Printf.printf "%d\n" !resposta
)
