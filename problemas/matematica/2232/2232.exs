defmodule Modulo do
  def leitura(t) do
    if t > 0 do
      n = IO.gets("") |> String.trim |> String.to_integer

      IO.puts :io_lib.format("~.w", [:erlang.trunc(:math.pow(2, n)) - 1])
      
      leitura(t - 1)
    end
  end
end

t = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(t)