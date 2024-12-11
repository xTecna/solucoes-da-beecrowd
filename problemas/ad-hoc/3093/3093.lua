valores = {'Q', 'J', 'K', 'A'}
n = tonumber(io.read())

for _ = 1, n do
    cartas = io.read()

    resposta = true
    for i = 1, 4 do
        resposta = resposta and string.find(cartas, valores[i])
    end

    if resposta then
        print('Aaah muleke')
    else
        print('Ooo raca viu')
    end
end
