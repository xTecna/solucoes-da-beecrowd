Scanf.scanf "%d" (fun n ->
    Printf.printf "Ho";
    for _ = 2 to n do
      Printf.printf " Ho"
    done;
    Printf.printf "!\n")
