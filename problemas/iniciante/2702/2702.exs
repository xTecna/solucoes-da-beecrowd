entrada = IO.gets("") |> String.trim |> String.split(" ")
ca = entrada |> Enum.at(0) |> String.to_integer
ba = entrada |> Enum.at(1) |> String.to_integer
pa = entrada |> Enum.at(2) |> String.to_integer

entrada = IO.gets("") |> String.trim |> String.split(" ")
cr = entrada |> Enum.at(0) |> String.to_integer
br = entrada |> Enum.at(1) |> String.to_integer
pr = entrada |> Enum.at(2) |> String.to_integer

IO.puts (max(cr - ca, 0) + max(br - ba, 0) + max(pr - pa, 0))