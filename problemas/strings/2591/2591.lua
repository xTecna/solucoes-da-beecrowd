c = tonumber(io.read())
for _ = 1, c do
    tamanho = 1
    for sequencia in io.read():gmatch("a+") do
        tamanho = tamanho * string.len(sequencia)
    end

    linha = "k"
    for _ = 1, tamanho do
        linha = linha .. "a"
    end
    print(linha)
end
