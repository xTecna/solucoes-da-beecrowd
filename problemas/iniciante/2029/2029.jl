using Printf

pi = 3.14
while !eof(stdin)
  v = parse(Float64, readline())
  d = parse(Float64, readline()) / 2.0

  area = pi * d * d
  altura = v / area

  @printf "ALTURA = %.2f\n" altura
  @printf "AREA = %.2f\n" area
end
