defmodule Modulo do
  def imprime(i, n) do
    if i <= n do
      IO.puts :io_lib.format("~.w ~.w ~.w", [i, i * i, i * i * i])
      IO.puts :io_lib.format("~.w ~.w ~.w", [i, i * i + 1, i * i * i + 1])
      imprime(i + 1, n)
    end
  end
end

n = IO.gets("") |> String.trim() |> String.to_integer()
Modulo.imprime(1, n)