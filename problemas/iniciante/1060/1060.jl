using Printf

positivos = 0
for i in 1:6
    numero = parse(Float64, readline())
    if numero > 0
        global positivos = positivos + 1
    end
end

@printf "%d valores positivos\n" positivos