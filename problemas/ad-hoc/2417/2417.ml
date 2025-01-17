Scanf.scanf "%d %d %d %d %d %d\n" (fun cv ce cs fv fe fs ->
	let cp = 10000 * (3 * cv + ce) + cs in
	let fp = 10000 * (3 * fv + fe) + fs in
	if (cp > fp) then
		Printf.printf "C\n"
	else
		if (fp > cp) then
			Printf.printf "F\n"
		else
			Printf.printf "=\n")
