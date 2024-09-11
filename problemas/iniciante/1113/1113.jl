entrada = split(readline())
numeros = [parse(Int32, numero) for numero in entrada]
x = numeros[1]
y = numeros[2]
while x != y
    if x < y
        println("Crescente")
    else
        println("Decrescente")
    end

    global entrada = split(readline())
    global numeros = [parse(Int32, numero) for numero in entrada]
    global x = numeros[1]
    global y = numeros[2]
end