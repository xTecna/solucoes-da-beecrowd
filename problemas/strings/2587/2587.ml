Scanf.scanf "%d\n" (fun n ->
	for i = 1 to n do
		Scanf.scanf "%s\n%s\n%s\n" (fun palavra1 palavra2 secreta ->
			let pos1 = String.index_from secreta 0 '_' in
			let pos2 = String.index_from secreta (pos1 + 1) '_' in
			if (palavra1.[pos1] == palavra2.[pos2] || palavra2.[pos1] == palavra1.[pos2]) then
				Printf.printf "Y\n"
			else
				Printf.printf "N\n")
	done;
)
