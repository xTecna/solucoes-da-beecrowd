let n = ref 1 in
while !n != 0 do
  Scanf.scanf "%d\n" (fun x ->
      let limite =
        int_of_float (log10 (float_of_int (1 lsl ((2 * x) - 2)))) + 1
      in
      if x != 0 then (
        for i = 0 to x - 1 do
          Printf.printf "%*d" limite (1 lsl i);
          for j = 1 to x - 1 do
            Printf.printf " %*d" limite (1 lsl (i + j))
          done;
          Printf.printf "\n"
        done;
        Printf.printf "\n");
      n := x)
done
