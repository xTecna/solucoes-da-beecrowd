defmodule Modulo do
  def leitura(n) do
    if n > 0 do
      entrada = IO.gets("") |> String.trim |> String.split(" ")

      x = entrada |> Enum.at(0) |> String.to_integer
      y = entrada |> Enum.at(1) |> String.to_integer

      if y == 0 do
        IO.puts "divisao impossivel"
      else
        IO.puts :io_lib.format("~.1f", [x/y])
      end
      
      leitura(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)