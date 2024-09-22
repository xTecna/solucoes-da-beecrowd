let segura (m : int array array) (i : int) (j : int) : bool =
  m.(i).(j) + m.(i + 1).(j) + m.(i).(j + 1) + m.(i + 1).(j + 1) >= 2
in

Scanf.scanf "%d\n" (fun n ->
    let m = Array.make_matrix (n + 1) (n + 1) 0 in
    for i = 0 to n do
      m.(i).(0) <- Scanf.scanf "%d" (fun x -> x);
      for j = 1 to n do
        m.(i).(j) <- Scanf.scanf " %d" (fun x -> x)
      done;
      Scanf.scanf "\n" ()
    done;
    for i = 0 to n - 1 do
      for j = 0 to n - 1 do
        if segura m i j then Printf.printf "S" else Printf.printf "U"
      done;
      Printf.printf "\n"
    done)
