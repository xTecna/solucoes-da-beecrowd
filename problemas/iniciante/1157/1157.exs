defmodule Modulo do
  def imprime(i, n) do
    if i <= n do
      if rem(n, i) == 0 do
        IO.puts i
      end
      imprime(i + 1, n)
    end
  end
end

n = IO.gets("") |> String.trim() |> String.to_integer()
Modulo.imprime(1, n)