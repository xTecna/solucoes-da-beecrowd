n = gets.to_i

entrada = gets.chomp.split.map(&:to_i)
a = entrada[0]
b = entrada[1]

if a + b <= n then
  puts 'Farei hoje!'
else
  puts 'Deixa para amanha!'
end