using Printf

n = parse(Int, readline())

for i in 1:n
  partes = split(readline())

  if partes[1] == "Thor"
    @printf "Y\n"
  else
    @printf "N\n"
  end
end