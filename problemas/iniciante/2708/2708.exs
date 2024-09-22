defmodule Modulo do
  def imprime() do
    entrada = IO.gets("") |> String.trim() |> String.split(" ")
    palavra = entrada |> Enum.at(0) |> String.trim()

    if palavra == "ABEND" do
      [0, 0]
    else
      resposta = imprime()
      pessoas = resposta |> Enum.at(0)
      jipes = resposta |> Enum.at(1)

      numero = entrada |> Enum.at(1) |> String.to_integer()
      if palavra == "SALIDA" do
        [pessoas + numero, jipes + 1]
      else
        [pessoas - numero, jipes - 1]
      end
    end
  end
end

[pessoas, jipes] = Modulo.imprime()
IO.puts pessoas
IO.puts jipes
