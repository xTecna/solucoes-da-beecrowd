entrada = IO.gets("") |> String.trim() |> String.split(" ")

a = entrada |> Enum.at(0) |> String.to_integer()
b = entrada |> Enum.at(1) |> String.to_integer()

IO.puts max(a, b)