defmodule Modulo do
  def leitura() do
    try do
      entrada = IO.gets("") |> String.trim() |> String.split(" ")
      resposta = leitura()
      v = entrada |> Enum.at(0) |> String.to_integer()
      t = entrada |> Enum.at(1) |> String.to_integer()
      [(v * 2 * t) | resposta]
    rescue
      FunctionClauseError -> []
    end
  end
end

resposta = Modulo.leitura()
Enum.each(resposta, fn r -> IO.puts r end)