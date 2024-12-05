l = IO.gets("") |> String.trim |> String.to_integer
c = IO.gets("") |> String.trim |> String.to_integer

IO.puts (l * c + (l - 1) * (c - 1))
IO.puts (2 * (l + c - 2))