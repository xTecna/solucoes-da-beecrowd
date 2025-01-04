using Printf

b = parse(Int, readline())
t = parse(Int, readline())

if (b + t > 160)
  @printf "1\n"
else
  if (b + t < 160)
    @printf "2\n"
  else
    @printf "0\n"
  end
end