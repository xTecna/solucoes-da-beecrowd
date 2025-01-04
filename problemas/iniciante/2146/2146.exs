defmodule Modulo do
  def leitura() do
    try do
      senha = IO.gets("") |> String.trim |> String.to_integer
      resposta = leitura()
      [(senha - 1) | resposta]
    rescue
      FunctionClauseError -> []
    end
  end
end

resposta = Modulo.leitura()
Enum.each(resposta, fn r -> IO.puts r end)