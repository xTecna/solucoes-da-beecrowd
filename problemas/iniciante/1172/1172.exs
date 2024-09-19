defmodule Modulo do
  def substituicao(x) do
    if x > 0 do
      substituicao(x - 1)  
      numero = IO.gets("") |> String.trim |> String.to_integer
      if numero <= 0 do
        IO.puts "X[#{x - 1}] = 1"
      else
        IO.puts "X[#{x - 1}] = #{numero}"
      end
    end
  end
end

Modulo.substituicao(10)