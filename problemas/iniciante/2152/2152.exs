defmodule Modulo do
  def formato(numero) do
    if numero < 10 do
      "0#{numero}"
    else
      numero
    end
  end

  def imprime(n) do
    if n > 0 do
      entrada = IO.gets("") |> String.trim |> String.split(" ")
      h = entrada |> Enum.at(0) |> String.to_integer
      m = entrada |> Enum.at(1) |> String.to_integer
      o = entrada |> Enum.at(2) |> String.to_integer

      if (o == 1) do
        IO.puts "#{formato(h)}:#{formato(m)} - A porta abriu!"
      else
        IO.puts "#{formato(h)}:#{formato(m)} - A porta fechou!"
      end
      
      imprime(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.imprime(n)