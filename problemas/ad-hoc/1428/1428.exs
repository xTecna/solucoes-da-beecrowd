defmodule Modulo do
  def leitura(0) do
    nil
  end

  def leitura(t) do
    numeros = IO.gets("") |> String.trim |> String.split(" ")
    n = numeros |> Enum.at(0) |> String.to_integer
    m = numeros |> Enum.at(1) |> String.to_integer
    IO.puts ceil((n - 2) / 3) * ceil((m - 2) / 3)
    leitura(t - 1)
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)
