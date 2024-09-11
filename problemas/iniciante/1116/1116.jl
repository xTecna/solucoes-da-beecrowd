using Printf

n = parse(Int, readline())
for i in 1:n
    numeros = [parse(Float64, x) for x in split(readline())]
    x = numeros[1]
    y = numeros[2]

    if y == 0
        @printf "divisao impossivel\n"
    else
        @printf "%.1f\n" x/y
    end
end