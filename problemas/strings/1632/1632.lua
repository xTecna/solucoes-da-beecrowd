function variacoes(letra)
    if letra == 'a' or letra == 'e' or letra == 'i' or letra == 'o' or letra == 's' then
        return 3
    else
        return 2
    end
end

t = tonumber(io.read())

for _ = 1, t do
    senha = string.lower(io.read())

    resposta = 1
    for i = 1, string.len(senha) do
        resposta = resposta * variacoes(string.sub(senha, i, i))
    end

    print(resposta)
end
