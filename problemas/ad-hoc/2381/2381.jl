using Printf

numeros = [parse(Int, x) for x in split(readline())]
n = numeros[1]
k = numeros[2]

alunos = []
for i in 1:n
  push!(alunos, readline())
end
alunos = sort(alunos)

@printf "%s\n" alunos[k]