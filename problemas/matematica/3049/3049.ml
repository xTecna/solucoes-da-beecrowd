Scanf.scanf "%d\n%d\n" (fun b t ->
	if (b + t > 160) then Printf.printf "1\n"
	else if (b + t < 160) then Printf.printf "2\n"
	else Printf.printf "0\n"
)
