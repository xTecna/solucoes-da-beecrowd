defmodule Modulo do
  def processa(n) when n > 0, do: processa(n, 0, 0)

  defp processa(0, jogador1, jogador2), do: {jogador1, jogador2}

  defp processa(n, jogador1, jogador2) do
    entrada = IO.gets("") |> String.trim |> String.split(" ")
    a = List.first(entrada) |> String.to_integer
    b = List.last(entrada) |> String.to_integer
    processa(n - 1, jogador1 + cond do a > b -> 1; a < b -> 0; true -> 0 end, jogador2 + cond               
  end

  def leitura() do
    n = IO.gets("") |> String.trim() |> String.to_integer()
    if n != 0 do
      {jogador1, jogador2} = processa(n)
      IO.puts("#{jogador1} #{jogador2}")
      leitura()
    end
  end
end

Modulo.leitura()
