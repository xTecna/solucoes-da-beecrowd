using Printf

n = parse(Int, readline())

for i = 1:n
  palavra1 = readline()
  palavra2 = readline()
  secreta = readline()

  pos1 = findfirst("_", secreta)
  pos2 = findlast("_", secreta)

  if palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1]
    @printf "Y\n"
  else
    @printf "N\n"
  end
end