defmodule Modulo do
    def leitura(n, anterior) do
        if n == 0 do
            0
        else
            atual = IO.gets("") |> String.trim |> String.to_integer
            if atual != anterior do
                leitura(n - 1, atual) + 1
            else
                leitura(n - 1, anterior)
            end
        end
    end
end

n = IO.gets("") |> String.trim |> String.to_integer
IO.puts(Modulo.leitura(n, -1))
