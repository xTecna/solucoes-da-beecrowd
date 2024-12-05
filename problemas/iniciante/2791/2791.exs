defmodule Modulo do
  def imprime(entrada, i) do
    if i > -1 do
      n = entrada |> Enum.at(i) |> String.to_integer
      if (n == 1) do
        IO.puts (i + 1)
      else
        imprime(entrada, i - 1)
      end
    end
  end
end

entrada = IO.gets("") |> String.trim |> String.split(" ")
Modulo.imprime(entrada, 3)