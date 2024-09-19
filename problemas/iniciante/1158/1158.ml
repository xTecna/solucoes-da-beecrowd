Scanf.scanf "%d\n" (fun n ->
    for _ = 0 to n - 1 do
      Scanf.scanf "%d %d\n" (fun a y ->
          let x = a + 1 - (a mod 2) in
          Printf.printf "%d\n" ((x + x + (2 * (y - 1))) * y / 2))
    done)
