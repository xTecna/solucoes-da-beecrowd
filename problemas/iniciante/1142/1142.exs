defmodule Modulo do
  def imprime(i, n) do
    if i < n do
      IO.puts "#{i} #{i + 1} #{i + 2} PUM"
      imprime(i + 4, n)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(1, 4 * n)