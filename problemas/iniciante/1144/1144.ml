Scanf.scanf "%d" (fun n ->
    for i = 1 to n do
      Printf.printf "%d %d %d\n" i (i * i) (i * i * i);
      Printf.printf "%d %d %d\n" i ((i * i) + 1) ((i * i * i) + 1)
    done)
