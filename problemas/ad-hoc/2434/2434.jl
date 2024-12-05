using Printf

entrada = split(readline())
numeros = [parse(Int64, elemento) for elemento in entrada]
n = numeros[1]
saldo = numeros[2]

resposta = saldo
for i = 1:n
    movimentacao = parse(Int64, readline())
    global saldo += movimentacao

    global resposta = min(resposta, saldo)
end

@printf "%d\n" resposta
