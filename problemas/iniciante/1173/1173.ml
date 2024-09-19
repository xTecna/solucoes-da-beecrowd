Scanf.scanf "%d" (fun n ->
    let x = ref n in
    for i = 0 to 9 do
      Printf.printf "N[%d] = %d\n" i !x;
      x := !x * 2
    done)
