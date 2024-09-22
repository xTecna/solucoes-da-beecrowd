defmodule Modulo do
  def processa(s, i) do
    if i == String.length(s) do
      0
    else
      numero = s |> String.at(i) |> String.to_integer
      processa(s, i + 1) + numero
    end
  end
end

entrada = IO.gets("") |> String.trim

soma = Modulo.processa(entrada, 0)
IO.puts "#{entrada}#{rem(soma, 2)}"