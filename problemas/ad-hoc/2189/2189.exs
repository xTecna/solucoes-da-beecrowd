defmodule Modulo do
    def processa(_, []) do
        -1
    end

    def processa(n, [numero | resto]) do
        if n == String.to_integer(numero) do
            numero
        else
            processa(n + 1, resto)
        end
    end

    def leitura(teste) do
        n = IO.gets("") |> String.trim |> String.to_integer
        if n != 0 do
            numeros = IO.gets("") |> String.trim |> String.split(" ")
            IO.puts "Teste #{teste}"
            IO.puts processa(1, numeros)
            IO.puts ""
            leitura(teste + 1)
        end
    end
end

Modulo.leitura(1)