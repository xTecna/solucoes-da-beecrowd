defmodule Modulo do
  def processa(0, _, resposta) do
    resposta
  end

  def processa(n, menor_ano, resposta) do
    partes = IO.gets("") |> String.trim |> String.split(" ")
    planeta = partes |> Enum.at(0) |> String.trim
    ano = partes |> Enum.at(1) |> String.to_integer
    tempo = partes |> Enum.at(2) |> String.to_integer

    if (ano - tempo < menor_ano) do
      processa(n - 1, ano - tempo, planeta)
    else
      processa(n - 1, menor_ano, resposta)
    end
  end

  def leitura(0) do
    nil
  end

  def leitura(n) do
    IO.puts(processa(n, 9999, ""))
    x = IO.gets("") |> String.trim |> String.to_integer
    leitura(x)
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)
