numeros = IO.gets("") |> String.trim |> String.split(" ")
r = numeros |> Enum.at(0) |> String.to_integer
l = numeros |> Enum.at(1) |> String.to_integer

pi = 3.1415
v = (4.0 * pi * r * r * r)/3.0

IO.puts :io_lib.format("~w", [floor(l / v)])