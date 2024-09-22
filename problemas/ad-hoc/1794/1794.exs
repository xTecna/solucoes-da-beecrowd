n = IO.gets("") |> String.trim |> String.to_integer

entrada = IO.gets("") |> String.trim |> String.split(" ")
la = entrada |> Enum.at(0) |> String.to_integer
lb = entrada |> Enum.at(1) |> String.to_integer

entrada = IO.gets("") |> String.trim |> String.split(" ")
sa = entrada |> Enum.at(0) |> String.to_integer
sb = entrada |> Enum.at(1) |> String.to_integer

if (la <= n && n <= lb && sa <= n && n <= sb) do
  IO.puts "possivel"
else
  IO.puts "impossivel"
end