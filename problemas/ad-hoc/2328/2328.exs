defmodule Modulo do
  def soma([]) do
    0
  end

  def soma([numero | resto]) do
    String.to_integer(numero) + soma(resto)
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
divisoes = IO.gets("") |> String.trim |> String.split(" ")

IO.puts Modulo.soma(divisoes) - n
