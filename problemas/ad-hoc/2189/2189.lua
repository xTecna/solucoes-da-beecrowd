teste = 1
while true do
    n = tonumber(io.read())
    if n == 0 then
        break
    end

    i = 1
    for numero in io.read():gmatch("%S+") do
        ingresso = tonumber(numero)
        if i == ingresso then
            break
        end
        i = i + 1
    end

    print('Teste ' .. teste)
    print(i)
    print('')

    teste = teste + 1
end
