n = tonumber(io.read())

for _ = 1, n do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
        entrada[#entrada + 1] = numero
    end

    n = tonumber(entrada[1])
    m = tonumber(entrada[2])

    print(math.ceil((n - 2) / 3) * math.ceil((m - 2) / 3))
end