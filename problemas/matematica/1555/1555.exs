defmodule Modulo do
  def r(x , y) do
    (9 * x * x) + (y * y)
  end

  def b(x, y) do
    (2 * x * x) + (25 * y * y)
  end

  def c(x, y) do
    (-100 * x) + (y * y * y)
  end

  def leitura(n) do
    if n > 0 do
      entrada = IO.gets("") |> String.trim |> String.split(" ")

      x = entrada |> Enum.at(0) |> String.to_integer
      y = entrada |> Enum.at(1) |> String.to_integer

      rafael = r(x, y)
      beto = b(x, y)
      carlos = c(x, y)

      if rafael > beto && rafael > carlos do
        IO.puts "Rafael ganhou"
      else
        if beto > rafael && beto > carlos do
          IO.puts "Beto ganhou"
        else
          IO.puts "Carlos ganhou"
        end
      end
      
      leitura(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)