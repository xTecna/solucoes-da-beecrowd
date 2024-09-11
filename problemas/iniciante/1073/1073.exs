defmodule Modulo do
  def imprimeQuadrado(x, y) do
    if x <= y do
      IO.puts "#{x}^2 = #{x * x}"
      imprimeQuadrado(x + 2, y)
    end
  end
end

x = IO.gets("") |> String.trim |> String.to_integer
numero = x - rem(x, 2)

Modulo.imprimeQuadrado(2, numero)