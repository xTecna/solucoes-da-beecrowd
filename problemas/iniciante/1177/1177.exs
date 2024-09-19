defmodule Modulo do
  def imprime(i, n) do
    if i < 1000 do
      IO.puts :io_lib.format("N[~.w] = ~.w", [i, rem(i, n)])
      imprime(i + 1, n)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(0, n)