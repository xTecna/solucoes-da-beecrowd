b = IO.gets("") |> String.trim |> String.to_integer
t = IO.gets("") |> String.trim |> String.to_integer

if b + t > 160 do
  IO.puts 1
else
  if b + t < 160 do
    IO.puts 2
  else
    IO.puts 0
  end
end
