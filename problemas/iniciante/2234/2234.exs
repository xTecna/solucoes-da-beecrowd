numeros = IO.gets("") |> String.trim |> String.split(" ")
h = numeros |> Enum.at(0) |> String.to_integer
p = numeros |> Enum.at(1) |> String.to_integer

IO.puts :io_lib.format("~.2f", [h / p])