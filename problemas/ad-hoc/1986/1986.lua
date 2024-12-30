n = tonumber(io.read())

resposta = ""
for letra in io.read():gmatch("%S+") do
    resposta = resposta .. string.char(tonumber(letra, 16))
end
print(resposta)
