pi = 3.141592654
while true do
    entrada = io.read()
    if entrada == nil then
        break
    end

    numeros = {}
    for numero in entrada:gmatch("%S+") do
        numeros[#numeros + 1] = tonumber(numero)
    end
    a = numeros[1]
    b = numeros[2]
    c = numeros[3]

    angulo = a * pi / 180

    print(string.format("%.2f", 5 * (math.tan(angulo) * b + c)))
end
