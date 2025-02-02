using Printf

c = parse(Int, readline())
for i in 1:c
  n = parse(Int, readline())
  if n <= 8000
    @printf "Inseto!\n"
  else
    @printf "Mais de 8000!\n"
  end
end