defmodule Modulo do
  def imprime(n, linha) do
    if n > 0 do
      imprime(n - 1, linha <> " Ho")
    else
      linha
    end
  end
end

n = IO.gets("") |> String.trim() |> String.to_integer()
IO.puts "Ho" <> Modulo.imprime(n - 1, "") <> "!"
