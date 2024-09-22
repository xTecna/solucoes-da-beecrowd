n = IO.gets("") |> String.trim |> String.to_integer

entrada = IO.gets("") |> String.trim |> String.split(" ")
p = entrada |> Enum.at(0) |> String.to_integer
c = entrada |> Enum.at(1)
q = entrada |> Enum.at(2) |> String.to_integer

if c == "+" do
  if p + q <= n do
    IO.puts "OK"
  else
    IO.puts "OVERFLOW"
  end
else
  if p * q <= n do
    IO.puts "OK"
  else
    IO.puts "OVERFLOW"
  end
end