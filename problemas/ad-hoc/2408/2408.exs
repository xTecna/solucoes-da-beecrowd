entrada = IO.gets("") |> String.trim |> String.split(" ")
numeros = entrada |> Enum.map(fn n -> String.to_integer(n) end) |> Enum.sort

IO.puts Enum.at(numeros, 1)
