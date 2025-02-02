using Printf

n = parse(Int, readline())
m = parse(Int, readline())

figurinhas = Set()
for i in 1:m
  x = parse(Int, readline())
  push!(figurinhas, x)
end

@printf "%d\n" (n - length(figurinhas))