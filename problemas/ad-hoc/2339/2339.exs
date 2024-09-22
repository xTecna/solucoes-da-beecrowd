entrada = IO.gets("") |> String.trim |> String.split(" ")
c = entrada |> Enum.at(0) |> String.to_integer
p = entrada |> Enum.at(1) |> String.to_integer
f = entrada |> Enum.at(2) |> String.to_integer

if p >= c * f do
  IO.puts "S"
else
  IO.puts "N"
end