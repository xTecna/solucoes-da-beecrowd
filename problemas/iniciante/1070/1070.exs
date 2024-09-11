numero = IO.gets("") |> String.trim |> String.to_integer
valor = numero + 1 - rem(numero, 2)

Enum.each(0..5, fn(x) ->
    IO.puts (valor + 2 * x)
end)