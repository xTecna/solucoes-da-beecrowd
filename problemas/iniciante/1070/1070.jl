using Printf

x = parse(Int32, readline())
x = x + (1 - (x % 2))

for i in 0:5
    println(x + 2 * i)
end