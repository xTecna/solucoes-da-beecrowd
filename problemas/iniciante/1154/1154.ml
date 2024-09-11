let soma = ref 0 in
let quantidade = ref 0 in
let n = ref 0 in
while !n >= 0 do
  Scanf.scanf "%d\n" (fun x ->
      if x >= 0 then (
        soma := !soma + x;
        quantidade := !quantidade + 1);
      n := x)
done;
Printf.printf "%.2f\n" (float_of_int !soma /. float_of_int !quantidade)
