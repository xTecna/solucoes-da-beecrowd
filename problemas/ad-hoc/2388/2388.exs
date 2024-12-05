defmodule Modulo do
    def leitura(n) do
        if n == 0 do
            0
        else
            numeros = IO.gets("") |> String.trim |> String.split(" ")
            v = numeros |> Enum.at(0) |> String.to_integer
            t = numeros |> Enum.at(1) |> String.to_integer
            v * t + leitura(n - 1)
        end
    end
end

n = IO.gets("") |> String.trim |> String.to_integer
resposta = Modulo.leitura(n)
IO.puts(resposta)