using Printf

n = parse(Int32, readline())

for i in 1:n
  @printf "%d %d %d\n" i (i * i) (i * i * i)
end