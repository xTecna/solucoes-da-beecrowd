using Printf

nomes = ["Rolien", "Naej", "Elehcim", "Odranoel"]

n = parse(Int32, readline())
for i in 1:n
  k = parse(Int32, readline())
  for j in 1:k
    feedback = parse(Int32, readline())
    @printf "%s\n" nomes[feedback]
  end
end