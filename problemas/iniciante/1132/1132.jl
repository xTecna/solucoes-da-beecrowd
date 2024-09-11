x = parse(Int, readline())
y = parse(Int, readline())

if x > y
    temp = x
    x = y
    y = temp
end

soma = 0
for i in x:y
    if i % 13 != 0
        global soma += i
    end
end

println(soma)