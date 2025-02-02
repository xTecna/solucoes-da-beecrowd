entrada = IO.gets("") |> String.trim |> String.split(" ")
n = entrada |> Enum.at(0) |> String.to_integer
x = entrada |> Enum.at(1) |> String.to_integer
y = entrada |> Enum.at(2) |> String.to_integer

IO.puts :io_lib.format("~.2f", [n / (x + y)])