n = tonumber(io.read())

for _ = 1, n do
    soma = 0
    for numero in io.read():gmatch("%d+") do
        soma = soma + tonumber(numero)
    end
    print(soma)
end
