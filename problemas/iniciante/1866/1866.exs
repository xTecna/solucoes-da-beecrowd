defmodule Modulo do
  def leitura(n) do
    if n > 0 do
      x = IO.gets("") |> String.trim |> String.to_integer
      IO.puts rem(x, 2)
      leitura(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)