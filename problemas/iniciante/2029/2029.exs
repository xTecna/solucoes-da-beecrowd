defmodule Modulo do
  def leitura() do
    try do
      {v, _} = IO.gets("") |> String.trim() |> Float.parse
      {d, _} = IO.gets("") |> String.trim() |> Float.parse
      area = 3.14 * (d / 2.0) * (d / 2.0)
      altura = v / area
      IO.puts :io_lib.format("ALTURA = ~.2f", [altura])
      IO.puts :io_lib.format("AREA = ~.2f", [area])
      leitura()
    rescue
      FunctionClauseError -> []
    end
  end
end

Modulo.leitura()