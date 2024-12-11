Scanf.scanf "%d" (fun n ->
	for i = 1 to n do
		Scanf.scanf "\n%s" (fun cartas ->
			if (String.index_opt cartas 'A') != None && (String.index_opt cartas 'K') != None && (String.index_opt cartas 'Q') != None && (String.index_opt cartas 'J') != None then
				Printf.printf "Aaah muleke\n"
			else
				Printf.printf "Ooo raca viu\n")
	done)
