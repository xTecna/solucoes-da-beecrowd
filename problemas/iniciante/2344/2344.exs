n = IO.gets("") |> String.trim |> String.to_integer
if n > 85 do
  IO.puts "A"
else
  if n > 60 do
    IO.puts "B"
  else
    if n > 35 do
      IO.puts "C"
    else
      if n > 0 do
        IO.puts "D"
      else
        IO.puts "E"
      end
    end
  end
end