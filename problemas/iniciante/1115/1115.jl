numeros = [parse(Int32, numero) for numero in split(readline())]
x = numeros[1]
y = numeros[2]
while x != 0 && y != 0
    if x > 0
        if y > 0
            println("primeiro")
        else
            println("quarto")
        end
    else
        if y > 0
            println("segundo")
        else
            println("terceiro")
        end
    end

    global numeros = [parse(Int32, numero) for numero in split(readline())]
    global x = numeros[1]
    global y = numeros[2]
end