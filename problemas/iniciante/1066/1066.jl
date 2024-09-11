using Printf

pares = 0
impares = 0
positivos = 0
negativos = 0
for i in 1:5
    numero = parse(Int32, readline())
    if numero % 2 == 0
        global pares = pares + 1
    else
        global impares = impares + 1
    end
    if numero > 0
        global positivos = positivos + 1
    else
        if numero < 0
            global negativos = negativos + 1
        end
    end
end

@printf "%d valor(es) par(es)\n" pares
@printf "%d valor(es) impar(es)\n" impares
@printf "%d valor(es) positivo(s)\n" positivos
@printf "%d valor(es) negativo(s)\n" negativos