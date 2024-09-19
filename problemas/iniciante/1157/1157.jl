using Printf

n = parse(Int32, readline())

for i in 1:n
  if (n % i == 0)
    @printf "%d\n" i
  end
end