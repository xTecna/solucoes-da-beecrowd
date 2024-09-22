defmodule Modulo do
  def leitura(0) do
    []
  end

  def leitura(n) do
    entrada = IO.gets("") |> String.trim |> String.split(" ")
    resposta = leitura(n - 1)

    x = entrada |> Enum.at(0) |> String.to_integer
    y = entrada |> Enum.at(1) |> String.to_integer

    [div(x * y, 2) | resposta]
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
resposta = Modulo.leitura(n)
Enum.each(resposta, fn r -> IO.puts :io_lib.format("~.w cm2", [r]) end)