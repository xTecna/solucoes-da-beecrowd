b = tonumber(io.read())
t = tonumber(io.read())

if b + t > 160 then
    print(1)
else
    if b + t < 160 then
        print(2)
    else
        print(0)
    end
end
