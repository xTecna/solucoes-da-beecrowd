defmodule Modulo do
  def fatorial(n) do
    if n == 1 do
      1
    else
      n * fatorial(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim() |> String.to_integer
IO.puts "#{Modulo.fatorial(n)}"
