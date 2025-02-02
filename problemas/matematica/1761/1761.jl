using Printf

pi = 3.141592654
while !eof(stdin)
  entrada = [parse(Float64, x) for x in split(readline())]
  a = entrada[1]
  b = entrada[2]
  c = entrada[3]

  @printf "%.2f\n" (5.0 * (tan(a * pi / 180.0) * b + c))
end