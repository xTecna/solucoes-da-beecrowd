using Printf

entrada = split(readline())
L = parse(Int, entrada[1])
D = parse(Int, entrada[2])

entrada = split(readline())
K = parse(Int, entrada[1])
P = parse(Int, entrada[2])

@printf "%d\n" (K * L + P * floor(L / D))
