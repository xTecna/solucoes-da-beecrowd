Scanf.scanf "%d\n%d" (fun n q ->
	let mesas = Array.make (n + 1) 0 in
	for i = 0 to n do
		mesas.(i) <- i
	done;
	for i = 1 to q do
		Scanf.scanf "\n%d %d" (fun e a ->
			if e == 1 then
				Scanf.scanf " %d" (fun b ->
					let temp = mesas.(a) in
					mesas.(a) <- mesas.(b);
					mesas.(b) <- temp)
			else
				let resposta = ref 0 in
				let mesa = ref mesas.(a) in
				while !mesa <> a do
					resposta := !resposta + 1;
					mesa := mesas.(!mesa)
				done;
				Printf.printf "%d\n" !resposta)
	done;)
