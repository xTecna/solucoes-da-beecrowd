n = gets.to_i

for i in 1..n
  entrada = gets.chomp.split.map(&:to_i)
  altura = entrada[0]
  espessura = entrada[1]
  galhos = entrada[2]

  if 200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos
    puts 'Sim'
  else
    puts 'Nao'
  end
end
