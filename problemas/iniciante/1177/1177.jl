using Printf

n = parse(Int32, readline())

for i in 0:999
  @printf "N[%d] = %d\n" i (i % n)
end