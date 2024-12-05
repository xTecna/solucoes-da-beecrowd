let rec imprime (i: int) (n: int) : unit =
  if i < n then (
    Printf.printf "%d %d %d PUM\n" i (i + 1) (i + 2);
    imprime (i + 4) n) in
Scanf.scanf "%d" (fun n -> imprime 1 (4 * n))
