defmodule Modulo do
    def somaPA(a1, an, n) do
        floor((n * (a1 + an)) / 2)
    end

    def leitura(t) do
        if t > 0 do
            n = IO.gets("") |> String.trim |> String.to_integer
            IO.puts(somaPA(1, n, n) + 1)
            leitura(t - 1)
        end
    end
end

t = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(t)