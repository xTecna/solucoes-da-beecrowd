conteiner = gets.chomp.split.map(&:to_i)
navio = gets.chomp.split.map(&:to_i)

puts ((navio[0] / conteiner[0]) * (navio[1] / conteiner[1]) * (navio[2] / conteiner[2]))