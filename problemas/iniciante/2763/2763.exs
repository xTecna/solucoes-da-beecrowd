partes = IO.gets("") |> String.trim |> String.split(".")
partes2 = partes |> Enum.at(2) |> String.split("-")

IO.puts(Enum.at(partes, 0))
IO.puts(Enum.at(partes, 1))
IO.puts(Enum.at(partes2, 0))
IO.puts(Enum.at(partes2, 1))
