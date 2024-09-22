defmodule Modulo do
  def leitura(entrada, n, t) do
    if n > -1 do
      numero = entrada |> Enum.at(n) |> String.to_integer()
      if numero == t do
        1 + leitura(entrada, n - 1, t)
      else
        leitura(entrada, n - 1, t)
      end
    else
      0
    end
  end
end

t = IO.gets("") |> String.trim |> String.to_integer
entrada = IO.gets("") |> String.trim |> String.split(" ")
corretos = Modulo.leitura(entrada, 4, t)
IO.puts corretos