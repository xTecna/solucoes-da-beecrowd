l = IO.gets("") |> String.trim
IO.puts (hd(String.to_charlist(l)) - 64)