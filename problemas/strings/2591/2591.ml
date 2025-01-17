Scanf.scanf "%d\n" (fun n ->
	for k = 1 to n do
		Scanf.scanf "%s\n" (fun hamekame ->
			let i = ref 0 in
			while (hamekame.[!i] != 'a') do
				i := !i + 1
			done;
			let tamanho1 = ref 0 in
			while (hamekame.[!i] == 'a') do
				tamanho1 := !tamanho1 + 1;
				i := !i + 1
			done;
			while (hamekame.[!i] != 'a') do
				i := !i + 1
			done;
			let tamanho2 = ref 0 in
			while (hamekame.[!i] == 'a') do
				tamanho2 := !tamanho2 + 1;
				i := !i + 1
			done;
			Printf.printf "k";
			for j = 1 to (!tamanho1 * !tamanho2) do
				Printf.printf "a"
			done;
			Printf.printf "\n")
		done)