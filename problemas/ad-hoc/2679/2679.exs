n = IO.gets("") |> String.trim |> String.to_integer
IO.puts (n + 2 - rem(n, 2))