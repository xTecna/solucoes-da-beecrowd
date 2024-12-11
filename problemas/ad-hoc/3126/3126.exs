defmodule Modulo do
    def processa([]) do
        0
    end

    def processa([x | numeros]) do
        numero = x |> String.to_integer
        numero + processa(numeros)
    end
end

_ = IO.gets("") |> String.trim |> String.to_integer
numeros = IO.gets("") |> String.trim |> String.split(" ")

resposta = Modulo.processa(numeros)

IO.puts(resposta)