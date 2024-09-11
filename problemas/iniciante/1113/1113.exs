defmodule Modulo do
  def resolve() do
    entrada = IO.gets("") |> String.trim |> String.split(" ")
    numeros = Enum.map(entrada, &String.to_integer/1)

    x = Enum.at(numeros, 0)
    y = Enum.at(numeros, 1)

    cond do
      x < y -> IO.puts "Crescente"
      x > y -> IO.puts "Decrescente"
      true -> :ok
    end

    if x != y do
      resolve()
    end
  end
end

Modulo.resolve()
