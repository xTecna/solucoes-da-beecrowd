let r (a : int) (b : int) : int = (9 * a * a) + (b * b) in
let b (a : int) (b : int) : int = (2 * (a * a)) + (25 * b * b) in
let c (a : int) (b : int) : int = (-100 * a) + (b * b * b) in
Scanf.scanf "%d\n" (fun n ->
    for _ = 0 to n - 1 do
      Scanf.scanf "%d %d\n" (fun x y ->
          let rafael = r x y in
          let beto = b x y in
          let carlos = c x y in
          if rafael > beto && rafael > carlos then
            Printf.printf "Rafael ganhou\n"
          else if beto > rafael && beto > carlos then
            Printf.printf "Beto ganhou\n"
          else Printf.printf "Carlos ganhou\n")
    done)
