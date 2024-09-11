using Printf

entrada = split(readline())
x1 = parse(Float64, entrada[1])
y1 = parse(Float64, entrada[2])

entrada = split(readline())
x2 = parse(Float64, entrada[1])
y2 = parse(Float64, entrada[2])

@printf "%.4f\n" sqrt(((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1)))
