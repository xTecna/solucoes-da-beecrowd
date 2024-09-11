tempo = tonumber(io.read(), 10)
velocidade = tonumber(io.read(), 10)

print(string.format('%.3f', (tempo * velocidade) / 12))
