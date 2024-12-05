numeros = {}
for numero in io.read():gmatch("%S+") do
    numeros[#numeros + 1] = tonumber(numero)
end
n = numeros[1]
saldo = numeros[2]

resposta = saldo
for _ = 1, n do
    saldo = saldo + tonumber(io.read())
    resposta = math.min(resposta, saldo)
end

print(resposta)
