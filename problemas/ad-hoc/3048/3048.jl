using Printf

n = parse(Int, readline())

resposta = 0
anterior = -1
for i in 1:n
    valor = parse(Int, readline())
    if anterior != valor
        global anterior = valor
        global resposta += 1
    end
end

@printf "%d\n" resposta