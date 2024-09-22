defmodule Modulo do
  def calcula(0), do: 6.0
  def calcula(i), do: 6.0 + 1.0 / calcula(i - 1)
end

n = IO.gets("") |> String.trim() |> String.to_integer()
resposta =
  if n == 0 do
    3.0
  else
    3.0 + 1.0 / Modulo.calcula(n - 1)
  end

IO.puts :io_lib.format("~.10f", [resposta])
