entrada = IO.gets("") |> String.trim |> String.split(" ")
l = entrada |> Enum.at(0) |> String.to_integer
d = entrada |> Enum.at(1) |> String.to_integer

entrada = IO.gets("") |> String.trim |> String.split(" ")
k = entrada |> Enum.at(0) |> String.to_integer
p = entrada |> Enum.at(1) |> String.to_integer

IO.puts (k * l + p * floor(l / d))