using Printf

n = parse(Int, readline())
for i in 1:n
  x = parse(Int, readline())
  @printf "%d\n" (x % 2)
end