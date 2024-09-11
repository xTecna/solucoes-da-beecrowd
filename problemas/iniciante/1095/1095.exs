defmodule Modulo do
  def imprime(i, j) do
    IO.puts "I=#{i} J=#{j}"
    if j == 0 do
      :ok
    else
      imprime(i + 3, j - 5)
    end
  end
end

Modulo.imprime(1, 60)