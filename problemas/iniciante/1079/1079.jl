using Printf

n = parse(Int32, readline())
for i in 1:n
    entrada = split(readline())
    numeros = [parse(Float64, numero) for numero in entrada]

    media = (2 * numeros[1] + 3 * numeros[2] + 5 * numeros[3])/10
    @printf "%.1f\n" media
end