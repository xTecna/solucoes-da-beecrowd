n = tonumber(io.read())

anterior = -1
resposta = 0
acumulado = 0
for _ = 1, n do
    atual = tonumber(io.read())

    if anterior ~= atual then
        anterior = atual
        acumulado = acumulado + 1
        resposta = math.max(resposta, acumulado)
    end
end

print(resposta)
