Scanf.scanf "%d %d %d\n" (fun a b c ->
	Scanf.scanf "%d %d %d\n" (fun x y z ->
		Printf.printf "%d\n" ((x / a) * (y / b) * (z / c))))
