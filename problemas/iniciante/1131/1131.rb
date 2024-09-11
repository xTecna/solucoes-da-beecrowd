grenais = 0
inter = 0
gremio = 0
empates = 0

while true
  jogo = gets.chomp.split.map(&:to_i)
  x = jogo[0]
  y = jogo[1]

  grenais += 1
  if x > y
    inter += 1
  elsif x < y
    gremio += 1
  else
    empates += 1
  end

  puts 'Novo grenal (1-sim 2-nao)'
  codigo = gets.to_i
  break if codigo == 2
end

puts format('%d grenais', grenais)
puts format('Inter:%d', inter)
puts format('Gremio:%d', gremio)
puts format('Empates:%d', empates)

if inter > gremio && inter > empates
  puts 'Inter venceu mais'
elsif gremio > inter && gremio > empates
  puts 'Gremio venceu mais'
else
  puts 'Nao houve vencedor'
end
