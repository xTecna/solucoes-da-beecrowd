Scanf.scanf "%d\n" (fun n ->
	for i = 1 to n do
		Scanf.scanf "%X " (fun numero -> Printf.printf "%c" (Char.chr numero))
	done;
	Printf.printf "\n")
