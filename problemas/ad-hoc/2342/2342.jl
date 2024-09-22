using Printf

n = parse(Int, readline())

palavras = split(readline())
p = parse(Int, palavras[1])
c = palavras[2]
q = parse(Int, palavras[3])

if c == "+"
  if p + q <= n
    @printf "OK\n"
  else
    @printf "OVERFLOW\n"
  end
else
  if p * q <= n
    @printf "OK\n"
  else
    @printf "OVERFLOW\n"
  end
end