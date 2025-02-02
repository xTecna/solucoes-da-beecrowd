defmodule Modulo do
  def numeros([]) do
    ""
  end

  def numeros([numero | resto]) do
    Integer.to_string(numero) <> numeros(resto)
  end

  def inverte(texto) do
    texto |> String.graphemes |> Enum.reverse |> Enum.join("")
  end

  def processa(0) do
    nil
  end

  def processa(n) do
    numeros = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn n -> String.to_integer(n) end)
    b = numeros |> Enum.at(0)
    e = numeros |> Enum.at(1)
    resposta = numeros(Enum.map(b..e, fn n -> n end))
    resposta = resposta <> inverte(resposta)
    IO.puts(resposta)
    processa(n - 1)
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.processa(n)
