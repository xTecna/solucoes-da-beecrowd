x = IO.gets("") |> String.trim |> String.to_integer
y = IO.gets("") |> String.trim |> String.to_float

resposta = :io_lib.format("~.3f km/l", [x/y])
IO.puts resposta
