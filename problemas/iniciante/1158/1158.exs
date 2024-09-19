defmodule Modulo do
  def somaPA(a1, an, n) do
    div((a1 + an) * n, 2)
  end

  def leitura(n) do
    if n > 0 do
      numeros = IO.gets("") |> String.trim |> String.split(" ")
      x = numeros |> Enum.at(0) |> String.to_integer
      y = numeros |> Enum.at(1) |> String.to_integer

      x = x + 1 - rem(abs(x), 2)
      IO.puts somaPA(x, x + 2 * (y - 1), y)
    
      leitura(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)