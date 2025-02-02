defmodule Modulo do
  def imprime(figurinhas, m) do
    if m > 0 do
      x = IO.gets("") |> String.trim |> String.to_integer
      imprime(MapSet.put(figurinhas, x), m - 1)
    else
      MapSet.size(figurinhas)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
m = IO.gets("") |> String.trim |> String.to_integer

figurinhas = MapSet.new()
resposta = Modulo.imprime(figurinhas, m)
IO.puts (n - resposta)