defmodule Modulo do
  def imprime(i) do
    if i > 0 do
      IO.puts "I am Toorg!"
      imprime(i - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(n)