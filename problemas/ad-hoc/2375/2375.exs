diametro = IO.gets("") |> String.trim |> String.to_integer

numeros = IO.gets("") |> String.trim |> String.split(" ")
altura = numeros |> Enum.at(0) |> String.to_integer
largura = numeros |> Enum.at(0) |> String.to_integer
profundidade = numeros |> Enum.at(0) |> String.to_integer

if (diametro <= altura && diametro <= largura && diametro <= profundidade) do
    IO.puts "S"
else
    IO.puts "N"
end