using Printf

notas = []

while length(notas) < 2
    entrada = parse(Float64, readline())
    if entrada >= 0 && entrada <= 10
        push!(notas, entrada)
    else
        @printf "nota invalida\n"
    end
    flush(stdout)
end

@printf "media = %.2f\n" (notas[1] + notas[2])/2