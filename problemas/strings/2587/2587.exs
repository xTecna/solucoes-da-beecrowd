defmodule Modulo do
  def processa(0) do
    nil
  end

  def processa(n) do
    palavra1 = IO.gets("")
    palavra2 = IO.gets("")
    secreta = IO.gets("")
    posicoes = Regex.scan(~r/\_/, secreta, return: :index)
    {pos1, _} = posicoes |> Enum.at(0) |> Enum.at(0)
    {pos2, _} = posicoes |> Enum.at(1) |> Enum.at(0)
    if String.at(palavra1, pos1) == String.at(palavra2, pos2) || String.at(palavra1, pos2) == String.at(palavra2, pos1) do
      IO.puts "Y"
    else
      IO.puts "N"
    end
    processa(n - 1)
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.processa(n)
