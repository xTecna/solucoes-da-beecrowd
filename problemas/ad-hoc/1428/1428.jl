using Printf

t = parse(Int, readline())

for i = 1:t
  entrada = [parse(Float64, x) for x in split(readline())]
  n = entrada[1]
  m = entrada[2]

  @printf "%.0f\n" (ceil((n - 2) / 3) * ceil((m - 2) / 3))
end