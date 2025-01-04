t = 1
n = tonumber(io.read())
while n ~= -1 do
    print("Experiment " .. t .. ": " .. math.floor(n / 2) .. " full cycle(s)")

    t = t + 1
    n = tonumber(io.read())
end
