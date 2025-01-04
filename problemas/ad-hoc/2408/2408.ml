Scanf.scanf "%d %d %d\n" (fun a b c ->
	let campeonato = Array.make 3 0 in
  campeonato.(0) <- a;
  campeonato.(1) <- b;
  campeonato.(2) <- c;
	Array.sort compare campeonato;
	Printf.printf "%d\n" campeonato.(1);
)
