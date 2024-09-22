entrada = IO.gets("") |> String.trim |> String.split(" ")
c = entrada |> Enum.at(0) |> String.to_integer
n = entrada |> Enum.at(1) |> String.to_integer

IO.puts rem(c, n)