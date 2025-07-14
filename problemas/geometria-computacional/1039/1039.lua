function distancia(x1, y1, x2, y2)
    return math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end

while true do
    entrada = io.read()
    if entrada == nil then
        break
    end

    numeros = {}
    for numero in entrada:gmatch("%S+") do
        numeros[#numeros + 1] = tonumber(numero)
    end
    r1 = numeros[1]
    x1 = numeros[2]
    y1 = numeros[3]
    r2 = numeros[4]
    x2 = numeros[5]
    y2 = numeros[6]

    dist = distancia(x1, y1, x2, y2)
    if dist <= r1 - r2 then
        print("RICO")
    else
        print("MORTO")
    end
end
