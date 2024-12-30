function desenhaTriangulo(n, deslocamento)
    altura = math.floor(n / 2) + 1
    for i = 1, altura do
        linha = ""
        deslocamento_atual = deslocamento + altura - i
        for _ = 1, deslocamento_atual do
            linha = linha .. " "
        end
        for _ = 1, 2 * i - 1 do
            linha = linha .. "*"
        end
        print(linha)
    end
end

while true do
    entrada = io.read()
    if entrada == nil then
        break
    end

    n = tonumber(entrada)
    desenhaTriangulo(n, 0)
    desenhaTriangulo(3, math.floor(n / 2) - 1)
    print("")
end
