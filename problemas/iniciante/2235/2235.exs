entrada = IO.gets("") |> String.trim |> String.split(" ")
a = entrada |> Enum.at(0) |> String.to_integer
b = entrada |> Enum.at(1) |> String.to_integer
c = entrada |> Enum.at(2) |> String.to_integer

if a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a do
  IO.puts "S"
else
  IO.puts "N"
end