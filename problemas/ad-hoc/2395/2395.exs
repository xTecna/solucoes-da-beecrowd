defmodule Modulo do
  def processa([], []) do
    1
  end

  def processa([c | conteiner], [n | navio]) do
    floor(n / c) * processa(conteiner, navio)
  end
end

conteiner = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn x -> String.to_integer(x) end)
navio = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn x -> String.to_integer(x) end)

IO.puts Modulo.processa(conteiner, navio)
