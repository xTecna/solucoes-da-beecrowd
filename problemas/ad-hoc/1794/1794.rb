n = gets.to_i

numeros = gets.chomp.split.map(&:to_i)
la = numeros[0]
lb = numeros[1]

numeros = gets.chomp.split.map(&:to_i)
sa = numeros[0]
sb = numeros[1]

if la <= n && n <= lb && sa <= n && n <= sb
  puts 'possivel'
else
  puts 'impossivel'
end
