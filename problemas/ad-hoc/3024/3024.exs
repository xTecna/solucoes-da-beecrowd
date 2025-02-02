defmodule Modulo do
  def processa([], _, acumulado, _) do
    acumulado
  end

  def processa([atual | resto], anterior, acumulado, x) do
    if (atual - anterior <= x) do
      processa(resto, atual, acumulado + 1, x)
    else
      max(acumulado, processa(resto, atual, 1, x))
    end
  end
end

x = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn n -> String.to_integer(n) end) |> Enum.at(1)

[primeiro | resto] = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn n -> String.to_integer(n) end)
IO.puts(Modulo.processa(resto, primeiro, 1, x))
