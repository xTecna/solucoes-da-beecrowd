defmodule Modulo do
  def compativel(_x, _y, i, _j) when i == 5, do: true

  def compativel(x, y, i, j) do
    if Enum.at(x, i) == Enum.at(y, j) do
      false
    else
      compativel(x, y, i + 1, j + 1)
    end
  end
end

x = IO.gets("") |> String.trim() |> String.split(" ")
y = IO.gets("") |> String.trim() |> String.split(" ")

if Modulo.compativel(x, y, 0, 0) do
  IO.puts "Y"
else
  IO.puts "N"
end
