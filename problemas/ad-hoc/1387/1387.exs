defmodule Modulo do
  def leitura() do
    entrada = IO.gets("") |> String.trim |> String.split(" ")
    l = entrada |> Enum.at(0) |> String.to_integer
    r = entrada |> Enum.at(1) |> String.to_integer
    if l != 0 && r != 0 do
      IO.puts (l + r)
      leitura()
    end
  end
end

Modulo.leitura()