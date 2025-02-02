defmodule Modulo do
  def calcula(precos, bolo, i) do
    if i < length(bolo) do
      Enum.at(precos, Enum.at(bolo, i)) * Enum.at(bolo, i + 1) + calcula(precos, bolo, i + 2)
    else
      0
    end
  end

  def processa(precos, b, d) do
    if b > 0 do
      bolo = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(&String.to_integer/1)
      anterior = div(d, calcula(precos, bolo, 1))
      proximo = processa(precos, b - 1, d)
      max(proximo, anterior)
    else
      0
    end
  end

  def leitura(n) do
    if n > 0 do
      entrada = IO.gets("") |> String.trim |> String.split(" ")
      d = entrada |> Enum.at(0) |> String.to_integer
      b = entrada |> Enum.at(2) |> String.to_integer
      
      precos = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(&String.to_integer/1)
      IO.puts processa(precos, b, d)
      leitura(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)