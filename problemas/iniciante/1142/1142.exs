defmodule Modulo do
  def imprime(i, n) do
    if i < n do
      IO.puts "#{1 + 4 * i} #{2 + 4 * i} #{3 + 4 * i} PUM"
      imprime(i + 1, n)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(0, n)