defmodule Modulo do
  def quantidadeImpares(a, b) do
    div((b - a), 2) + 1
  end

  def somaPA(a1, an, n) do
    div((a1 + an) * n, 2)
  end

  def leitura(n) do
    if n > 0 do
      entrada = IO.gets("") |> String.trim |> String.split(" ")

      x = entrada |> Enum.at(0) |> String.to_integer
      y = entrada |> Enum.at(1) |> String.to_integer

      a = min(x, y)
      b = max(x, y)

      c = a + rem(abs(a), 2) + 1
      d = b - rem(abs(b), 2) - 1

      if c <= d do
        IO.puts Modulo.somaPA(c, d, Modulo.quantidadeImpares(c, d))
      else
        IO.puts "0"
      end
      
      leitura(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)