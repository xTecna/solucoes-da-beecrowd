def imprimeTriangulo(tamanho, deslocamento)
    espacos = tamanho / 2 + deslocamento
    asteriscos = 1

    while asteriscos <= tamanho
        linha = ""
        for i in (1..espacos) do
            linha += " "
        end
        for i in (1..asteriscos) do
            linha += "*"
        end
        puts linha

        espacos -= 1
        asteriscos += 2
    end
end

while linha = gets
    n = linha.to_i

    imprimeTriangulo(n, 0)
    imprimeTriangulo(3, n / 2 - 1)
    puts ""
end