defmodule Modulo do
    def processa(maiores, i) do
        if i < length(maiores) do
            numero = maiores |> Enum.at(i) |> String.to_integer
            max(processa(maiores, i + 1), numero)
        else
            0
        end
    end
end

maiores = IO.gets("") |> String.trim |> String.split(" ")
IO.puts Modulo.processa(maiores, 0)