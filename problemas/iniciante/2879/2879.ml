Scanf.scanf "%d\n" (fun n ->
    let vitorias = ref 0 in
    for _ = 1 to n do
      Scanf.scanf "%d\n" (fun x -> if x != 1 then vitorias := !vitorias + 1)
    done;
    Printf.printf "%d\n" !vitorias)
