n = gets.to_i

for i in 1..n do
  palavras = gets.chomp.split
  nome = palavras[0]

  if nome == 'Thor'
    puts 'Y'
  else
    puts 'N'
  end
end
