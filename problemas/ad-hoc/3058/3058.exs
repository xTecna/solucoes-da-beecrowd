defmodule Modulo do
  def processa(0) do
    1000.0
  end

  def processa(n) do
    numeros = IO.gets("") |> String.trim |> String.split(" ")
    {p, _} = numeros |> Enum.at(0) |> Float.parse
    {g, _} = numeros |> Enum.at(1) |> Float.parse
    min(p / g, processa(n - 1))
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
menor_preco = Modulo.processa(n)
IO.puts :io_lib.format("~.2f", [1000.0 * menor_preco])
