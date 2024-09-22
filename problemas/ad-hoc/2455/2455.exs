entrada = IO.gets("") |> String.trim |> String.split(" ")
p1 = entrada |> Enum.at(0) |> String.to_integer
c1 = entrada |> Enum.at(1) |> String.to_integer
p2 = entrada |> Enum.at(2) |> String.to_integer
c2 = entrada |> Enum.at(3) |> String.to_integer

diferenca = p2 * c2 - p1 * c1

if diferenca < 0 do
  IO.puts "-1"
else
  if diferenca == 0 do
    IO.puts "0"
  else
    IO.puts "1"
  end
end
