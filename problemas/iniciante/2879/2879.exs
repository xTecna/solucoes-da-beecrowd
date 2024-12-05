defmodule Modulo do
  def imprime(n) do
    if n > 0 do
      resposta = imprime(n - 1)
      x = IO.gets("") |> String.trim |> String.to_integer
      if (x != 1) do
        resposta + 1
      else
        resposta
      end
    else
      0
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
resposta = Modulo.imprime(n)
IO.puts resposta