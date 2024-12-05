defmodule Modulo do
    def leitura(n, saldo) do
        if n > 0 do
            movimentacao = IO.gets("") |> String.trim |> String.to_integer
            min(saldo + movimentacao, leitura(n - 1, saldo + movimentacao))
        else
            saldo
        end
    end
end

entrada = IO.gets("") |> String.trim |> String.split(" ")
n = entrada |> Enum.at(0) |> String.to_integer
saldo = entrada |> Enum.at(1) |> String.to_integer

resposta = min(saldo, Modulo.leitura(n, saldo))
IO.puts resposta
