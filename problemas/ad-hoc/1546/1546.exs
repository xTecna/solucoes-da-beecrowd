nomes = ["Rolien", "Naej", "Elehcim", "Odranoel"]

n = IO.gets("") |> String.trim() |> String.to_integer()
Enum.each(1..n, fn _ ->
  k = IO.gets("") |> String.trim() |> String.to_integer()
  Enum.each(1..k, fn _ ->
    feedback = IO.gets("") |> String.trim() |> String.to_integer()
    IO.puts Enum.at(nomes, feedback - 1)
  end)
end)