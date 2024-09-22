Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%d %d %d\n" (fun h m o ->
          if o = 1 then Printf.printf "%02d:%02d - A porta abriu!\n" h m
          else Printf.printf "%02d:%02d - A porta fechou!\n" h m)
    done)
