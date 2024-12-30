defmodule Modulo do
    def processa([]) do
        ""
    end

    def processa([letra | resto]) do
        <<String.to_integer(letra, 16)>> <> processa(resto)
    end
end

_ = IO.gets("") |> String.trim |> String.to_integer
letras = IO.gets("") |> String.trim |> String.split(" ")

IO.puts Modulo.processa(letras)