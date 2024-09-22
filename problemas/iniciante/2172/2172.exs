defmodule Modulo do
  def leitura() do
    entrada = IO.gets("") |> String.trim |> String.split(" ")
    x = entrada |> Enum.at(0) |> String.to_integer
    m = entrada |> Enum.at(1) |> String.to_integer

    if x != 0 || m != 0 do
      IO.puts (x * m)
      leitura()
    end
  end
end

Modulo.leitura()