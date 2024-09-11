entrada = IO.gets("") |> String.trim |> String.split(" ")
x1 = entrada |> Enum.at(0) |> String.to_float
y1 = entrada |> Enum.at(1) |> String.to_float
entrada = IO.gets("") |> String.trim |> String.split(" ")
x2 = entrada |> Enum.at(0) |> String.to_float
y2 = entrada |> Enum.at(1) |> String.to_float

resposta = :io_lib.format("~.4f", [:math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))])
IO.puts resposta
