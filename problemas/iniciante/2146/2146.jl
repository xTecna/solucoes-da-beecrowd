using Printf

while !eof(stdin)
  senha = parse(Float64, readline())
  @printf "%d\n" (senha - 1)
end
