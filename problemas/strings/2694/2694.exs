defmodule Modulo do
  def processa(0) do
    nil
  end

  def processa(n) do
    linha = IO.gets("") |> String.trim
    parte1 = linha |> String.slice(2..3) |> String.to_integer()
    parte2 = linha |> String.slice(5..7) |> String.to_integer()
    parte3 = linha |> String.slice(11..12) |> String.to_integer()
    IO.puts(parte1 + parte2 + parte3)
    processa(n - 1)
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.processa(n)
