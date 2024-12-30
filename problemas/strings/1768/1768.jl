using Printf

function imprimeTriangulo(tamanho, deslocamento)
    espacos = div(tamanho, 2) + deslocamento
    asteriscos = 1

    while (asteriscos <= tamanho)
        @printf "%s%s\n" repeat(" ", espacos) repeat("*", asteriscos)

        espacos -= 1
        asteriscos += 2
    end
end

while !eof(stdin)
    n = parse(Int, readline())

    imprimeTriangulo(n, 0)
    imprimeTriangulo(3, div(n, 2) - 1)
    @printf "\n"
end