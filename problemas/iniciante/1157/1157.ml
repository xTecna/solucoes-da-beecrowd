Scanf.scanf "%d" (fun n ->
    for i = 1 to n do
      if n mod i == 0 then Printf.printf "%d\n" i
    done)
