function quantidadeImpares(a, b)
    return div(b - a, 2) + 1
end

function somaPA(a1, an, n)
    return div((a1 + an) * n, 2)
end

n = parse(Int, readline())
for i in 1:n
    numeros = [parse(Int, x) for x in split(readline())]
    x = numeros[1]
    y = numeros[2]

    a = min(x, y)
    b = max(x, y)

    a = a + (abs(a) % 2) + 1
    b = b - (abs(b) % 2) - 1

    if a > b
        println(0)
    else
        println(somaPA(a, b, quantidadeImpares(a, b)))
    end
end