defmodule Modulo do
  def conta(i, j) do
    if i <= j do
      if rem(i, 13) > 0 do
        conta(i + 1, j) + i
      else
        conta(i + 1, j)
      end
    else
      0
    end
  end
end

x = IO.gets("") |> String.trim |> String.to_integer
y = IO.gets("") |> String.trim |> String.to_integer

if x <= y do
  IO.puts "#{Modulo.conta(x, y)}"
else
  IO.puts "#{Modulo.conta(y, x)}"
end