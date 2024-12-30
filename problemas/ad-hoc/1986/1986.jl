using Printf

function valor(simbolo)
    if Int(simbolo) < Int('A')
        return Int(simbolo) - Int('0')
    else
        return Int(simbolo) - Int('A') + 10
    end
end

function convertePraDecimal(numero)
    resposta = 0
    for letra in numero
        resposta *= 16
        resposta += valor(letra)
    end
    return resposta
end

n = parse(Int, readline())
numeros = split(readline())

for numero in numeros
    @printf "%c" convertePraDecimal(numero)
end
@printf "\n"