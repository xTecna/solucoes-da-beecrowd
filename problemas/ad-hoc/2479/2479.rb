n = gets.to_i

levadas = 0
criancas = []
comportadas = 0
for i in (1..n)
  palavras = gets.chomp.split

  if palavras[0] == '+'
    comportadas += 1
  else
    levadas += 1
  end

  criancas << palavras[1]
end

criancas.sort!

for i in (0..(n - 1))
  puts criancas[i]
end
puts format('Se comportaram: %d | Nao se comportaram: %d', comportadas, levadas)
