Scanf.scanf "%d\n" (fun x ->
	let n = ref x in
	let conta = ref 7 in
	if !n > 100 then (
		conta := !conta + (!n - 100) * 5;
		n := 100;
	);
	if !n > 30 then (
		conta := !conta + (!n - 30) * 2;
		n := 30;
	);
	if !n > 10 then (
		conta := !conta + (!n - 10)
	);
	Printf.printf "%d\n" !conta
)
