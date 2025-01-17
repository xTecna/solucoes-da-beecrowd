defmodule Modulo do
  def processa(0, 0) do
    nil
  end

  def processa(a, b) do
    IO.puts (2 * a - b)
    [a, b] = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn x -> String.to_integer(x) end)
    processa(a, b)
  end
end

[a, b] = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn x -> String.to_integer(x) end)
Modulo.processa(a, b)
