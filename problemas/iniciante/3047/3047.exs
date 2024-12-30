m = IO.gets("") |> String.trim() |> String.to_integer()
a = IO.gets("") |> String.trim() |> String.to_integer()
b = IO.gets("") |> String.trim() |> String.to_integer()

c = m - a - b

IO.puts max(a, max(b, c))
