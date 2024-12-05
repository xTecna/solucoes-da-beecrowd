Scanf.scanf "%d %d\n" (fun l d ->
	Scanf.scanf "%d %d\n" (fun k p ->
		Printf.printf "%d\n" (k * l + p * (l / d))
	)
)
