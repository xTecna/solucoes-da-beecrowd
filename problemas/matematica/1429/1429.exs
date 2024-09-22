defmodule Modulo do
  @fatoriais [1, 2, 6, 24, 120]

  def converte_para_decimal(numero) do
    numero
    |> String.trim()
    |> String.graphemes()
    |> Enum.reverse()
    |> Enum.with_index(0)
    |> Enum.reduce(0, fn {digito, potencia}, resposta ->
      resposta + String.to_integer(digito) * Enum.at(@fatoriais, potencia)
    end)
  end

  def leitura() do
    case IO.gets("") |> String.trim() do
      "0" -> []
      numero ->
        [converte_para_decimal(numero) | leitura()]
    end
  end
end

resposta = Modulo.leitura()
Enum.each(resposta, fn r -> IO.puts r end)
