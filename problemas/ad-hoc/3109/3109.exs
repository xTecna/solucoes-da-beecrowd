defmodule Modulo do
  def troca(mesas, a, b) do
    valor_a = Map.get(mesas, a)
    valor_b = Map.get(mesas, b)
    mesas |> Map.put(a, valor_b) |> Map.put(b, valor_a)
  end

  def busca(mesas, a, pessoa) do
    if (Map.get(mesas, a) == pessoa) do
      0
    else
      busca(mesas, Map.get(mesas, a), pessoa) + 1
    end
  end

  def processa(_mesas, 0) do
    nil
  end

  def processa(mesas, n) do
    numeros = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn n -> String.to_integer(n) end)
    case numeros do
      [1, a, b] ->
        processa(troca(mesas, a, b), n - 1)
      [2, a] ->
        IO.puts busca(mesas, a, a)
        processa(mesas, n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
q = IO.gets("") |> String.trim |> String.to_integer
mesas = Map.new(0..n, fn x -> {x, x} end)
Modulo.processa(mesas, q)
