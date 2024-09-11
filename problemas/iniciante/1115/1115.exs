defmodule Modulo do
  def leitura() do
    entrada = IO.gets("") |> String.trim |> String.split(" ")
    numeros = Enum.map(entrada, &String.to_integer/1)
    x = numeros |> Enum.at(0)
    y = numeros |> Enum.at(1)
    
    if x == 0 || y == 0 do
      :ok
    else
      cond do
        x > 0 && y > 0 -> IO.puts "primeiro"
        x > 0 && y < 0 -> IO.puts "quarto"
        x < 0 && y > 0 -> IO.puts "segundo"
        x < 0 && y < 0 -> IO.puts "terceiro"
      end
      leitura()
    end
  end
end

Modulo.leitura()