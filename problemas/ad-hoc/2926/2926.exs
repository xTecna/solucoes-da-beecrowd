defmodule Modulo do
  def processa(0) do
    ""
  end

  def processa(n) do
    "a" <> processa(n - 1)
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
grito = Modulo.processa(n)
IO.puts "Ent#{grito}o eh N#{grito}t#{grito}l!"
