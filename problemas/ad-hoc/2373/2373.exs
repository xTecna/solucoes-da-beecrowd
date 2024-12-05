defmodule Modulo do
    def leitura(n) do
        if n == 0 do
            0
        else
            numeros = IO.gets("") |> String.trim |> String.split(" ")
            latas = numeros |> Enum.at(0) |> String.to_integer
            copos = numeros |> Enum.at(1) |> String.to_integer

            if (latas > copos) do
                leitura(n - 1) + copos
            else
                leitura(n - 1)
            end
        end
    end
end

n = IO.gets("") |> String.trim |> String.to_integer
IO.puts Modulo.leitura(n)
