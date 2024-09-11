codigo = gets.to_i

alcool = 0
gasolina = 0
diesel = 0
while codigo != 4
  if codigo == 1
    alcool += 1
  elsif codigo == 2
    gasolina += 1
  elsif codigo == 3
    diesel += 1
  end

  codigo = gets.to_i
end

puts 'MUITO OBRIGADO'
puts 'Alcool: %d' % alcool
puts 'Gasolina: %d' % gasolina
puts 'Diesel: %d' % diesel
