using Printf

pares = 0
for i in 1:5
    numero = parse(Int32, readline())
    if numero % 2 == 0
        global pares = pares + 1
    end
end

@printf "%d valores pares\n" pares