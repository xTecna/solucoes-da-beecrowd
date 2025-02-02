Scanf.scanf "%d\n" (fun t ->
    for _ = 1 to t do
      Scanf.scanf "%d %d %d\n" (fun d i b ->
          let precos = Array.make i 0 in
          Scanf.scanf "%d" (fun preco -> precos.(0) <- preco);
          for k = 1 to i - 1 do
            Scanf.scanf " %d" (fun preco -> precos.(k) <- preco)
          done;
          Scanf.scanf "%c" (fun _ -> ());
          let resposta = ref 0 in
          for _ = 0 to b - 1 do
            Scanf.scanf "%d" (fun q ->
                let custo = ref 0 in
                for _ = 0 to q - 1 do
                  Scanf.scanf " %d %d" (fun x y ->
                      custo := !custo + (precos.(x) * y))
                done;
                if d / !custo > !resposta then resposta := d / !custo);
            Scanf.scanf "%c" (fun _ -> ())
          done;
          Printf.printf "%d\n" !resposta)
    done)
