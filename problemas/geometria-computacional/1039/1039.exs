defmodule Modulo do
  def dist(x1, y1, x2, y2) do
    :math.sqrt(((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1)))
  end

  def leitura do
    try do
      entrada = IO.gets("") |> String.trim |> String.split(" ")
      r1 = entrada |> Enum.at(0) |> String.to_integer
      x1 = entrada |> Enum.at(1) |> String.to_integer
      y1 = entrada |> Enum.at(2) |> String.to_integer
      r2 = entrada |> Enum.at(3) |> String.to_integer
      x2 = entrada |> Enum.at(4) |> String.to_integer
      y2 = entrada |> Enum.at(5) |> String.to_integer

      if dist(x1, y1, x2, y2) <= (r1 - r2) do
        IO.puts "RICO"
      else
        IO.puts "MORTO"
      end
      leitura()
    rescue
      _ -> nil
    end
  end
end

Modulo.leitura()
