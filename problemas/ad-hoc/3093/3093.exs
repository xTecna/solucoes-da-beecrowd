n = IO.gets("") |> String.trim |> String.to_integer

Enum.each(1..n, fn _ ->
    cartas = IO.gets("") |> String.trim
    if (String.contains?(cartas, "A") && String.contains?(cartas, "K") && String.contains?(cartas, "Q") && String.contains?(cartas, "J")) do
        IO.puts "Aaah muleke"
    else
        IO.puts "Ooo raca viu"
    end
end)
