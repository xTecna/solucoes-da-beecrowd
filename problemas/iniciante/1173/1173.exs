defmodule Modulo do
  def imprime(i, x, y) do
    if (x < y) do
      IO.puts "N[#{x}] = #{i}"
      imprime(i * 2, x + 1, y)
    end
  end
end

numero = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(numero, 0, 10)