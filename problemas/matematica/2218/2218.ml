let somaPA (a1 : int) (an : int) (n : int) : int = (n * (a1 + an)) / 2 in
Scanf.scanf "%d\n" (fun t ->
	for _ = 1 to t do
		Scanf.scanf "%d\n" (fun n ->
			Printf.printf "%d\n" ((somaPA 1 n n) + 1);
		)
	done;
)
