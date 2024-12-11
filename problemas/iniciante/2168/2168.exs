defmodule Modulo do
  def leitura(n) do
    Enum.map(1..n, fn _ ->
      IO.gets("") |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
    end)
  end

  def segura(m, i, j) do
    Enum.at(Enum.at(m, i), j) + Enum.at(Enum.at(m, i + 1), j) + Enum.at(Enum.at(m, i), j + 1) + Enum.at(Enum.at(m, i + 1), j + 1) >= 2
  end

  def processa(m, i, j, n) do
    if i < n do
      if j == n do
        "\n" <> processa(m, i + 1, 0, n)
      else
        if segura(m, i, j) do
          "S" <> processa(m, i, j + 1, n)
        else
          "U" <> processa(m, i, j + 1, n)
        end
      end
    else
      ""
    end
  end
end

n = IO.gets("") |> String.trim() |> String.to_integer()
m = Modulo.leitura(n + 1)
resposta = Modulo.processa(m, 0, 0, n)
IO.puts String.trim(resposta)