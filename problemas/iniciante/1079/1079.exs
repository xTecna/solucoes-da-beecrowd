defmodule Modulo do
  def ponderada(x, n) do
    if (x < n) do
      entrada = IO.gets("") |> String.trim |> String.split(" ")
      numeros = Enum.map(entrada, &String.to_float/1)
  
      media = (2 * Enum.at(numeros, 0) + 3 * Enum.at(numeros, 1) + 5 * Enum.at(numeros, 2))/10
      IO.puts :io_lib.format("~.1f", [media])
      ponderada(x + 1, n)
    else
      ()
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.ponderada(0, n)