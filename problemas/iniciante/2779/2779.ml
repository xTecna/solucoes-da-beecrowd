let figurinhas = Array.make 101 false in
Scanf.scanf "%d\n%d\n" (fun n m ->
    for _ = 1 to m do
      Scanf.scanf "%d\n" (fun x -> figurinhas.(x) <- true)
    done;
    let resposta = ref 0 in
    for i = 1 to n do
      if figurinhas.(i) == false then resposta := !resposta + 1
    done;
    Printf.printf "%d\n" !resposta)
