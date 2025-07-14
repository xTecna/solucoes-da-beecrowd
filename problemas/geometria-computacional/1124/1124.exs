defmodule Modulo do
  def dist(x1, y1, x2, y2) do
    :math.sqrt(((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1)))
  end

  def leitura do
    try do
      [l, c, r1, r2] = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn n -> String.to_integer(n) end)
      if l == 0 && c == 0 && r1 == 0 && r2 == 0 do
        nil
      else
        [x1, y1, x2, y2] = [r1, r1, l - r2, c - r2]

        distancia = dist(x1, y1, x2, y2)
        if l < 2 * r1 || c < 2 * r1 || l < 2 * r2 || c < 2 * r2 || distancia < r1 + r2 do
          IO.puts "N"
        else
          IO.puts "S"
        end
        leitura()
      end
    rescue
      _ -> nil
    end
  end
end

Modulo.leitura()
