numeros = {}
for numero in io.read():gmatch("%S+") do
    numeros[#numeros + 1] = tonumber(numero)
end
l = numeros[1]
d = numeros[2]

numeros = {}
for numero in io.read():gmatch("%S+") do
    numeros[#numeros + 1] = tonumber(numero)
end
k = numeros[1]
p = numeros[2]

print(math.floor(l / d) * p + l * k)
