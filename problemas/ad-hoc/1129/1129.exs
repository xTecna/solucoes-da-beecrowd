defmodule Modulo do
  def avalia(cores, i) do
    if i < 5 do
      {opcao, corretos} = avalia(cores, i + 1)
      cor = cores |> Enum.at(i) |> String.to_integer
      if cor <= 127 do
        {i, corretos + 1}
      else
        {opcao, corretos}
      end
    else
      {-1, 0}
    end
  end

  def processa(n) do
    if n > 0 do
      cores = IO.gets("") |> String.trim |> String.split(" ")
      {opcao, corretos} = avalia(cores, 0)
      if corretos == 1 do
        IO.puts <<65 + opcao>>
      else
        IO.puts "*"
      end
      processa(n - 1)
    end
  end

  def leitura() do
    n = IO.gets("") |> String.trim |> String.to_integer
    if n != 0 do
      processa(n)
      leitura()
    end
  end
end

Modulo.leitura()
