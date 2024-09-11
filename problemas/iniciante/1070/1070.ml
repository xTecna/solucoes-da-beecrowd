Scanf.scanf "%d" (fun x ->
    let a = x + 1 - (x mod 2) in
    for i = 0 to 5 do
        Printf.printf "%d\n" (a + 2 * i)
    done;
)
