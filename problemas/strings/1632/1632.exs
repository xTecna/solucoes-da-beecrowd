defmodule Modulo do
    def variacoes(letra) when (letra == "A" or letra == "E" or letra == "I" or letra == "O" or letra == "S") do
        3
    end

    def variacoes(_) do
        2
    end

    def processa([]) do
        1
    end

    def processa([letra | senha]) do
        variacoes(letra) * processa(senha)
    end

    def leitura(n) do
        if n > 0 do
            senha = IO.gets("") |> String.trim |> String.upcase |> String.graphemes
            IO.puts(processa(senha))

            leitura(n - 1)
        end
    end
end

n = IO.gets("") |> String.trim |> String.to_integer
Modulo.leitura(n)