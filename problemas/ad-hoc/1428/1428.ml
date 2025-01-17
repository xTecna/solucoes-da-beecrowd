Scanf.scanf "%d\n" (fun t ->
	for i = 1 to t do
		Scanf.scanf "%d %d\n" (fun n m ->
			Printf.printf "%d\n" (int_of_float ((ceil (float_of_int (n - 2) /. 3.0)) *. (ceil (float_of_int (m - 2) /. 3.0)))))
	done)
