Scanf.scanf "%d\n" (fun n ->
	for i = 1 to n do
		Scanf.scanf "%s\n" (fun linha ->
			let parte1 = int_of_string (String.sub linha 2 2) in
			let parte2 = int_of_string (String.sub linha 5 3) in
			let parte3 = int_of_string (String.sub linha 11 2) in
			Printf.printf "%d\n" (parte1 + parte2 + parte3))
	done;
)
