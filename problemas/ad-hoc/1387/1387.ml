let rec leitura () =
  Scanf.scanf "%d %d\n" (fun l r ->
      if l != 0 && r != 0 then (
        Printf.printf "%d\n" (l + r);
        leitura ()))
in

leitura ()