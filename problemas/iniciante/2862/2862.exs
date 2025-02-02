defmodule Modulo do
  def imprime(i) do
    if i > 0 do
      c = IO.gets("") |> String.trim |> String.to_integer
      if (c <= 8000) do
        IO.puts "Inseto!"
      else
        IO.puts "Mais de 8000!"
      end
      imprime(i - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(n)