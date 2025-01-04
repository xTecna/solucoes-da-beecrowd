l = IO.gets("") |> String.trim |> String.to_integer
c = IO.gets("") |> String.trim |> String.to_integer

if (rem(l, 2) != rem(c, 2)) do
  IO.puts "0"
else
  IO.puts "1"
end