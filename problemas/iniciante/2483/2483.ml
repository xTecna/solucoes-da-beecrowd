Scanf.scanf "%d" (fun n ->
    Printf.printf "Feliz nat";
    for _ = 1 to n do
      Printf.printf "a"
    done;
    Printf.printf "l!\n")
