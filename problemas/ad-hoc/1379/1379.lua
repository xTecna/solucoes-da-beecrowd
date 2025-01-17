while true do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
        entrada[#entrada + 1] = numero
    end

    a = tonumber(entrada[1])
    b = tonumber(entrada[2])

    if a == 0 and b == 0 then
        break
    end

    print(2 * a - b)
end