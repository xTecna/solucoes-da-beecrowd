let f = Array.make 101 (-1) in
let rec feynman (n : int) : int =
  if f.(n) = -1 then f.(n) <- (n * n) + feynman (n - 1);
  f.(n)
in

f.(1) <- 1;
let rec leitura () =
  try
    Scanf.scanf "%d\n" (fun n ->
        if n != 0 then (
          Printf.printf "%d\n" (feynman n);
          leitura ()))
  with End_of_file -> ()
in

leitura ()