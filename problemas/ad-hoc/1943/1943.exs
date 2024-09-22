k = IO.gets("") |> String.trim |> String.to_integer

if k == 1 do
  IO.puts "Top 1"
else
  if k <= 3 do
    IO.puts "Top 3"
  else
    if k <= 5 do
      IO.puts "Top 5"
    else
      if k <= 10 do
        IO.puts "Top 10"
      else
        if k <= 25 do
          IO.puts "Top 25"
        else
          if k <= 50 do
            IO.puts "Top 50"
          else
            IO.puts "Top 100"
          end
        end
      end
    end
  end
end
