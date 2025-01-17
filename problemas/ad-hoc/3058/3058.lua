n = tonumber(io.read())

menor_preco = 1000.0
for _ = 1, n do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
        entrada[#entrada + 1] = tonumber(numero)
    end
    preco = entrada[1]
    grama = entrada[2]
    menor_preco = math.min(menor_preco, preco / grama)
end

print(string.format("%.2f", menor_preco * 1000))
