defmodule Modulo do
  def resolve(x) do
    if x == 0 do
      {0, 0, 0, 0}
    else
      numero = IO.gets("") |> String.trim |> String.to_integer
      {pares, impares, positivos, negativos} = resolve(x - 1)

      cond do
        (rem(abs(numero), 2) == 0) ->
          cond do
            (numero > 0) ->
              {pares + 1, impares, positivos + 1, negativos}
            (numero < 0) ->
              {pares + 1, impares, positivos, negativos + 1}
            true ->
              {pares + 1, impares, positivos, negativos}
          end
        (rem(abs(numero), 2) == 1) ->
          cond do
            (numero > 0) ->
              {pares, impares + 1, positivos + 1, negativos}
            (numero < 0) ->
              {pares, impares + 1, positivos, negativos + 1}
            true ->
              {pares, impares + 1, positivos, negativos}
          end
        true ->
          {pares, impares, positivos, negativos}
      end
    end
  end
end

resultado = Modulo.resolve(5)
IO.puts "#{elem(resultado, 0)} valor(es) par(es)"
IO.puts "#{elem(resultado, 1)} valor(es) impar(es)"
IO.puts "#{elem(resultado, 2)} valor(es) positivo(s)"
IO.puts "#{elem(resultado, 3)} valor(es) negativo(s)"