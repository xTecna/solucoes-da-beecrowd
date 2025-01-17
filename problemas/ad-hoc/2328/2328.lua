n = tonumber(io.read())

entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
end

soma = 0
for i = 1, #entrada do
    soma = soma + tonumber(entrada[i]) - 1
end

print(soma)
