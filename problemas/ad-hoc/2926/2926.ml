Scanf.scanf "%d" (fun n ->
	let frase = ref "" in
	for i = 1 to n do
		frase := !frase ^ "a"
	done;
	Printf.printf "Ent%so eh N%st%sl!\n" !frase !frase !frase
)
