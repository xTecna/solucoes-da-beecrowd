using Printf

l = parse(Int32, readline())
c = parse(Int32, readline())

if (l % 2 != c % 2)
  @printf "0\n"
else
  @printf "1\n"
end