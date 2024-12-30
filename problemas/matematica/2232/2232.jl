using Printf

t = parse(Int, readline())
for i in 1:t
  n = parse(Int, readline())  
  @printf "%d\n" ((1 << n) - 1)
end