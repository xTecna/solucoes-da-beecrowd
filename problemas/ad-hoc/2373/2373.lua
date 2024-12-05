n = tonumber(io.read())

resposta = 0
for _ = 1, n do
    numeros = {}
    for numero in io.read():gmatch("%S+") do
        numeros[#numeros + 1] = tonumber(numero)
    end
    latas = numeros[1]
    copos = numeros[2]

    if (latas > copos) then
        resposta = resposta + copos
    end
end

print(resposta)
