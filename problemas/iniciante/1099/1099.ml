let quantidadeImpares (x : int) (y : int) : int = ((y - x) / 2) + 1 in
let somaPA (a1 : int) (an : int) (n : int) : int = (a1 + an) * n / 2 in

Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%d %d\n" (fun x y ->
          let a = min x y in
          let b = max x y in
          let c = a + (abs a mod 2) + 1 in
          let d = b - (abs b mod 2) - 1 in
          if c > d then Printf.printf "0\n"
          else Printf.printf "%d\n" (somaPA c d (quantidadeImpares c d)))
    done)
