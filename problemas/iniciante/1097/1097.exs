defmodule Modulo do
  def imprime(i, j) do
    IO.puts "I=#{i} J=#{j}"
    IO.puts "I=#{i} J=#{j - 1}"
    IO.puts "I=#{i} J=#{j - 2}"
    if i == 9 do
      :ok
    else
      imprime(i + 2, j + 2)
    end
  end
end

Modulo.imprime(1, 7)