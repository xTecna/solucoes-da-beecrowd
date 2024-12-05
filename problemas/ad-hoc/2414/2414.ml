Scanf.scanf "%d" (fun i ->
	let maior = ref i in
	try
		while true do
		Scanf.scanf " %d" (fun x ->
			if x > !maior then maior := x)
		done
	with End_of_file -> Printf.printf "%d\n" !maior)