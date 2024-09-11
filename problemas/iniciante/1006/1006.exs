a = IO.gets("") |> String.trim |> String.to_float
b = IO.gets("") |> String.trim |> String.to_float
c = IO.gets("") |> String.trim |> String.to_float
resposta = :io_lib.format("MEDIA = ~.1f", [(2 * a + 3 * b + 5 * c)/10])
IO.puts resposta
