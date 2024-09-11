n = IO.gets("") |> String.trim |> String.to_integer

Enum.each(1..10, fn(x) ->
    IO.puts "#{x} x #{n} = #{x * n}"
end)