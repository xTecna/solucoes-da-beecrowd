defmodule Modulo do
    def criaLinha(espacos, asteriscos) do
        case {espacos == 0, asteriscos == 0} do
            {true, true} -> ""
            {true, false} -> "*" <> criaLinha(espacos, asteriscos - 1)
            {false, true} -> " " <> criaLinha(espacos - 1, asteriscos)
            {false, false} -> " " <> criaLinha(espacos - 1, asteriscos)
        end
    end

    def imprimeLinha(espacos, asteriscos, tamanho) do
        if asteriscos <= tamanho do
            IO.puts criaLinha(espacos, asteriscos)
            imprimeLinha(espacos - 1, asteriscos + 2, tamanho)
        end
    end

    def imprimeTriangulo(tamanho, deslocamento) do
        imprimeLinha(floor(tamanho / 2) + deslocamento, 1, tamanho)
    end

    def leitura() do
        try do
            n = IO.gets("") |> String.trim |> String.to_integer
            imprimeTriangulo(n, 0)
            imprimeTriangulo(3, floor(n / 2) - 1)
            IO.puts ""
            leitura()
        rescue
            FunctionClauseError -> nil
        end
    end
end

Modulo.leitura()
