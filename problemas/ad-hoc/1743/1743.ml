let x = String.split_on_char ' ' (read_line ()) |> Array.of_list in
let y = String.split_on_char ' ' (read_line ()) |> Array.of_list in
let compativel = ref true in
for i = 0 to 4 do
  if int_of_string x.(i) == int_of_string y.(i) then compativel := false
done;
if !compativel then Printf.printf "Y\n" else Printf.printf "N\n"