c = tonumber(io.read())

for _ = 1, c do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
        entrada[#entrada + 1] = tonumber(numero)
    end
    b = entrada[1]
    e = entrada[2]

    resposta = ""
    for i = b, e do
        resposta = resposta .. tostring(i)
    end
    for i = e, b, -1 do
        resposta = resposta .. string.reverse(tostring(i))
    end

    print(resposta)
end
