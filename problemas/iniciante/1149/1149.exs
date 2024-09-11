defmodule Modulo do
  def somaPA(a1, an, n) do
    div((a1 + an) * n, 2)
  end

  def leitura(entrada, i) do
    numero = entrada |> Enum.at(i) |> String.to_integer()
    if numero > 0 do
      numero
    else
      leitura(entrada, i + 1)
    end
  end
end

entrada = IO.gets("") |> String.trim |> String.split(" ")
a = entrada |> Enum.at(0) |> String.to_integer()
n = Modulo.leitura(entrada, 1)
IO.puts Modulo.somaPA(a, a + n - 1, n)