entrada = IO.gets("") |> String.trim |> String.split(" ")
codigo = entrada |> Enum.at(0) |> String.to_integer
quantidade = entrada |> Enum.at(1) |> String.to_integer

precos = [4.00, 4.50, 5.00, 2.00, 1.50]

IO.puts :io_lib.format("Total: R$ ~.2f", [(quantidade * Enum.at(precos, codigo - 1))])