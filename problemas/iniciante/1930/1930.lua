entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = tonumber(numero, 10)
end

soma = 0
for i = 1, 4 do
    soma = soma + entrada[i]
end
print(soma - 3)
