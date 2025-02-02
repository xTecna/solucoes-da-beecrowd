n = tonumber(io.read())
while n ~= 0 do
    resposta = ""
    menor_ano = 3000

    for _ = 1, n do
        entrada = {}
        for palavra in io.read():gmatch("%S+") do
            entrada[#entrada + 1] = palavra
        end
        ano = tonumber(entrada[2]) - tonumber(entrada[3])

        if ano < menor_ano then
            menor_ano = ano
            resposta = entrada[1]
        end
    end

    print(resposta)

    n = tonumber(io.read())
end
