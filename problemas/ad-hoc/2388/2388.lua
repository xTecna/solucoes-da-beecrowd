n = tonumber(io.read(), 10)

resposta = 0
for _ = 1, n do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
        entrada[#entrada + 1] = tonumber(numero)
    end
    resposta = resposta + entrada[1] * entrada[2]
end

print(resposta)