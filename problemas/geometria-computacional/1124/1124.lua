function distancia(x1, y1, x2, y2)
    return math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end

while true do
    numeros = {}
    for numero in io.read():gmatch("%S+") do
        numeros[#numeros + 1] = tonumber(numero)
    end
    l = numeros[1]
    c = numeros[2]
    r1 = numeros[3]
    r2 = numeros[4]
    if (l == 0 and c == 0 and r1 == 0 and r2 == 0) then
        break
    end

    x1 = r1
    y1 = r1
    x2 = l - r2
    y2 = c - r2

    dist = distancia(x1, y1, x2, y2)
    if l < 2 * r1 or c < 2 * r1 or l < 2 * r2 or c < 2 * r2 or dist < r1 + r2 then
        print("N")
    else
        print("S")
    end
end
