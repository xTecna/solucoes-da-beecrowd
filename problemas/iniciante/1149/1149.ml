let rec leitura () =
  Scanf.scanf " %d" (fun x -> if x > 0 then x else leitura ())

let somaPA (a1, an, n) = (a1 + an) * n / 2

let () =
  Scanf.scanf "%d" (fun a ->
      let n = leitura () in
      Printf.printf "%d\n" (somaPA (a, a + n - 1, n)))
