using Printf

maior = 0
posicao = 0

n = parse(Int32, readline())

dentro = 0
fora = 0
for i in 1:n
    numero = parse(Int32, readline())
    if numero >= 10 && numero <= 20
        global dentro = dentro + 1
    else
        global fora = fora + 1
    end
end

@printf "%d in\n" dentro
@printf "%d out\n" fora