defmodule Modulo do
  def pares(x) do
    if x == 0 do
      0
    else
      numero = IO.gets("") |> String.trim |> String.to_integer
      if rem(numero, 2) == 0 do
        pares(x - 1) + 1
      else
        pares(x - 1)
      end
    end
  end
end

IO.puts "#{Modulo.pares(5)} valores pares"
