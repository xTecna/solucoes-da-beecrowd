entrada = IO.gets("") |> String.trim |> String.split(" ")
p = entrada |> Enum.at(0) |> String.to_integer
r = entrada |> Enum.at(1) |> String.to_integer

if p == 1 do
  if r == 1 do
    IO.puts "A"
  else
    IO.puts "B"
  end
else
  IO.puts "C"
end