function letra(palavra, pos)
    return string.sub(palavra, pos, pos)
end

c = tonumber(io.read())

for _ = 1, c do
    palavra1 = io.read()
    palavra2 = io.read()
    secreta = io.read()

    pos1 = string.find(secreta, '_')
    pos2 = string.find(secreta, '_', pos1 + 1)

    if letra(palavra1, pos1) == letra(palavra2, pos2) or letra(palavra1, pos2) == letra(palavra2, pos1) then
        print("Y")
    else
        print("N")
    end
end
