defmodule Modulo do
  def gera(0) do
    ""
  end

  def gera(n) do
    "a" <> gera(n - 1)
  end

  def processa(0) do
    nil
  end

  def processa(n) do
    hamekame = IO.gets("") |> String.trim
    trechos = Regex.scan(~r/a+/, hamekame)
    tamanho1 = trechos |> Enum.at(0) |> Enum.at(0) |> String.length
    tamanho2 = trechos |> Enum.at(1) |> Enum.at(0) |> String.length
    resposta = "k" <> gera(tamanho1 * tamanho2)
    IO.puts resposta

    processa(n - 1)
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.processa(n)
