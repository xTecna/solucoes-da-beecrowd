defmodule Modulo do
  def leitura(n) do
    if n > 0 do
      entrada = IO.gets("") |> String.trim |> String.split(" ")

      r1 = entrada |> Enum.at(0) |> String.to_integer()
      r2 = entrada |> Enum.at(1) |> String.to_integer()

      IO.puts (r1 + r2)
      
      leitura(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer()
Modulo.leitura(n)