defmodule Modulo do
  def imprime(n, limite) when n > 0 do
    m =
      for i <- 0..(n-1) do
        for j <- 0..(n-1) do
          if j == 0 do
            String.pad_leading(Integer.to_string(floor(:math.pow(2, i))), limite, " ")
          else
            String.pad_leading(Integer.to_string(floor(:math.pow(2, i + j))), limite + 1, " ")
          end
        end
      end

    m
    |> Enum.map(&Enum.join(&1))
    |> Enum.join("\n")
  end

  def leitura() do
    n = IO.gets("") |> String.trim() |> String.to_integer
    if n > 0 do
      limite = floor(:math.log10(:math.pow(2, 2 * n - 2))) + 1
      IO.puts imprime(n, limite)
      IO.puts ""
      leitura()
    end
  end
end

Modulo.leitura()
