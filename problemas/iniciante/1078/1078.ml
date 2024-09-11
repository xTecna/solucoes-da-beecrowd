Scanf.scanf "%d" (fun n ->
    for i = 1 to 10 do
        Printf.printf "%d x %d = %d\n" i n (i * n)
    done
)
