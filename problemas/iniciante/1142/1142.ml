Scanf.scanf "%d" (fun n ->
    for i = 0 to n - 1 do
      for j = 0 to 2 do
        Printf.printf "%d " ((4 * i) + 1 + j)
      done;
      Printf.printf "PUM\n"
    done)
