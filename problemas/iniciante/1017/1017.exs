tempo = IO.gets("") |> String.trim |> String.to_integer
velocidade = IO.gets("") |> String.trim |> String.to_integer

IO.puts :io_lib.format("~.3f", [(tempo * velocidade)/12])