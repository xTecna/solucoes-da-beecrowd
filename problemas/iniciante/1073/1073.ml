let rec imprime (x : int) (fim : int) =
  if x <= fim then (
    Printf.printf "%d^2 = %d\n" x (x * x);
    imprime (x + 2) fim)
;;

Scanf.scanf "%d" (fun x -> imprime 2 x)
