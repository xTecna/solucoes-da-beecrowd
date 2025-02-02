n = tonumber(io.read())

mesas = {}
for i = 1, n do
    mesas[i] = i
end

q = tonumber(io.read())
for _ = 1, q do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
        entrada[#entrada + 1] = numero
    end

    comando = tonumber(entrada[1])
    if comando == 1 then
        a = tonumber(entrada[2])
        b = tonumber(entrada[3])

        temp = mesas[a]
        mesas[a] = mesas[b]
        mesas[b] = temp
    else
        a = tonumber(entrada[2])

        pos = a
        resposta = 0
        while mesas[pos] ~= a do
            resposta = resposta + 1
            pos = mesas[pos]
        end

        print(resposta)
    end
end