n = IO.gets("") |> String.trim() |> String.to_integer()
IO.puts div(((n + 1) * (n + 2)), 2)