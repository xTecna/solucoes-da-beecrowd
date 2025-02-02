defmodule Modulo do
  def imprime(t) do
    if t > 0 do
      imprime(t - 1)
      
      entrada = IO.gets("") |> String.trim |> String.split(" ")
      altura = entrada |> Enum.at(0) |> String.to_integer
      espessura = entrada |> Enum.at(1) |> String.to_integer
      galhos = entrada |> Enum.at(2) |> String.to_integer

      if 200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos do
        IO.puts "Sim"
      else
        IO.puts "Nao"
      end
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(n)