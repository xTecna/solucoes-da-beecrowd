c = tonumber(io.read())

resposta = 0
for numero in io.read():gmatch("%S+") do
    resposta = resposta + tonumber(numero)
end

print(resposta)
