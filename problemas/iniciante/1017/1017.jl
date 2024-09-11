using Printf

tempo = parse(Int, readline())
velocidade = parse(Int, readline())

@printf "%.3f\n" ((tempo * velocidade)/12)