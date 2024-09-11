defmodule Modulo do
  def leitura(x) do
    z = IO.gets("") |> String.trim |> String.to_integer
    if z > x do
      z
    else
      leitura x
    end
  end

  def processa(soma, resposta, x, z) do
    if soma > z do
      resposta
    else
      processa(soma + x + resposta, resposta + 1, x, z)
    end
  end
end

x = IO.gets("") |> String.trim |> String.to_integer
z = Modulo.leitura(x)
resposta = Modulo.processa(x, 1, x, z)
IO.puts :io_lib.format("~.w", [resposta])