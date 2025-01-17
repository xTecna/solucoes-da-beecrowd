using Printf

n = parse(Int, readline())
divisoes = [parse(Int32, x) for x in split(readline())]

@printf "%d\n" (sum(divisoes) - n)