defmodule Modulo do
  def leitura(entrada, n) do
    if n > -1 do
      numero = entrada |> Enum.at(n) |> String.to_integer()
      numero + leitura(entrada, n - 1)
    else
      0
    end
  end
end

entrada = IO.gets("") |> String.trim |> String.split(" ")
soma = Modulo.leitura(entrada, 3)
IO.puts (soma - 3)