defmodule Modulo do
  def leitura() do
    entrada = IO.gets("") |> String.trim |> String.split(" ")
    m = List.first(entrada) |> String.to_integer
    n = List.last(entrada) |> String.to_integer
    if n != 0 && n != 0 do
      IO.puts String.replace(Integer.to_string(m + n), "0", "")
      leitura()
    end
  end
end

Modulo.leitura()
