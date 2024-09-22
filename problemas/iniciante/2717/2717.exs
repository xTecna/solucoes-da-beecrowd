n = IO.gets("") |> String.trim |> String.to_integer

entrada = IO.gets("") |> String.trim |> String.split(" ")
a = entrada |> Enum.at(0) |> String.to_integer
b = entrada |> Enum.at(0) |> String.to_integer

if (a + b <= n) do
  IO.puts "Farei hoje!"
else
  IO.puts "Deixa para amanha!"
end