let f = Array.make 14 (-1) in
let rec fatorial (n : int) : int =
  if f.(n) = -1 then f.(n) <- n * fatorial (n - 1);
  f.(n)
in
f.(1) <- 1;
Scanf.scanf "%d\n" (fun n -> Printf.printf "%d\n" (fatorial n))
