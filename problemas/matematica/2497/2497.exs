defmodule Modulo do
  def leitura(teste) do
    n = IO.gets("") |> String.trim |> String.to_integer
    if (n != -1) do
      IO.puts("Experiment #{teste}: #{floor(n / 2)} full cycle(s)")
      leitura(teste + 1)
    end
  end
end

Modulo.leitura(1)
