using Printf

n = parse(Int, readline())

levadas = 0
criancas = []
comportadas = 0
for i in 1:n
  palavras = split(readline())

  if palavras[1] == "+"
    global comportadas += 1
  else
    global levadas += 1
  end
  
  push!(criancas, palavras[2])
end
criancas = sort(criancas)

for i in 1:n
  @printf "%s\n" criancas[i]
end
@printf "Se comportaram: %d | Nao se comportaram: %d\n" comportadas levadas