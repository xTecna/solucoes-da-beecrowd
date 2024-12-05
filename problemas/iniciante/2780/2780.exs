d = IO.gets("") |> String.trim |> String.to_integer

if d <= 800 do
  IO.puts "1"
else
  if d <= 1400 do
    IO.puts "2"
  else
    IO.puts "3"
  end
end