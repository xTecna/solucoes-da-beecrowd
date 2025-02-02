entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = tonumber(numero)
end
n = entrada[1]
x = entrada[2]

montanhas = {}
for numero in io.read():gmatch("%S+") do
    montanhas[#montanhas + 1] = tonumber(numero)
end

acumulado = 1
resposta = 1
for i = 2, #montanhas do
    if montanhas[i] <= montanhas[i - 1] + x then
        acumulado = acumulado + 1
    else
        resposta = math.max(resposta, acumulado)
        acumulado = 1
    end
end
resposta = math.max(resposta, acumulado)

print(resposta)
