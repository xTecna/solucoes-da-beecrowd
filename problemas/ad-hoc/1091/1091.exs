defmodule Modulo do
  defp processa(0, _n, _m), do: nil

  defp processa(k, n, m) do
    entrada = IO.gets("") |> String.trim() |> String.split(" ")
    x = List.first(entrada) |> String.to_integer
    y = List.last(entrada) |> String.to_integer

    x = x - n
    y = y - m

    if x == 0 || y == 0 do
      IO.puts("divisa")
    else
      case {x > 0, y > 0} do
        {true, true}  -> IO.puts("NE")
        {true, false} -> IO.puts("SE")
        {false, true} -> IO.puts("NO")
        {false, false}-> IO.puts("SO")
      end
    end

    processa(k - 1, n, m)
  end

  def leitura() do
    k = IO.gets("") |> String.trim() |> String.to_integer()
    if k != 0 do
      entrada = IO.gets("") |> String.trim() |> String.split(" ")
      n = List.first(entrada) |> String.to_integer
      m = List.last(entrada) |> String.to_integer
      processa(k, n, m)
      leitura()
    end
  end
end

Modulo.leitura()
