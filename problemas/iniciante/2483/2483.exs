defmodule Modulo do
  def imprime(n, linha) do
    if n > 0 do
      imprime(n - 1, linha <> "a")
    else
      linha
    end
  end
end

n = IO.gets("") |> String.trim() |> String.to_integer()
IO.puts "Feliz nat" <> Modulo.imprime(n, "") <> "l!"