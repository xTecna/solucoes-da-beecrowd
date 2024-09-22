numeros = gets.chomp.split.map(&:to_i)
n = numeros[0]
k = numeros[1]

alunos = []
for i in (1..n) do
  alunos << gets.chomp
end
alunos.inspect
alunos.sort!

puts alunos[k - 1]
