defmodule Modulo do
  def imprime(t) do
    if t > 0 do
      imprime(t - 1)
      
      entrada = IO.gets("") |> String.trim |> String.split(" ")
      n = entrada |> Enum.at(0) |> String.to_integer
      k = entrada |> Enum.at(1) |> String.to_integer

      IO.puts div(n, k) + rem(n, k)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(n)