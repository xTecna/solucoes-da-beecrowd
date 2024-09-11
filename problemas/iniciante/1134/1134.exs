defmodule Modulo do
  def le() do
    codigo = IO.gets("") |> String.trim() |> String.to_integer
    if codigo == 4 do
      {0, 0, 0}
    else
      {alcool, gasolina, diesel} = le()
      cond do
        codigo == 1 -> {alcool + 1, gasolina, diesel}
        codigo == 2 -> {alcool, gasolina + 1, diesel}
        codigo == 3 -> {alcool, gasolina, diesel + 1}
        true -> {alcool, gasolina, diesel}
      end
    end
  end
end

{alcool, gasolina, diesel} = Modulo.le()

IO.puts "MUITO OBRIGADO"
IO.puts "Alcool: #{alcool}"
IO.puts "Gasolina: #{gasolina}"
IO.puts "Diesel: #{diesel}"