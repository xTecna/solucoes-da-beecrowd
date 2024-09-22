n = gets.to_i
numeros = gets.chomp.split.map(&:to_i)

dois = 0
tres = 0
quatro = 0
cinco = 0
for i in 0..(numeros.length - 1) do
  numero = numeros[i]
  dois += 1 if numero.even?
  tres += 1 if numero % 3 == 0
  quatro += 1 if numero % 4 == 0
  cinco += 1 if numero % 5 == 0
end

puts format('%d Multiplo(s) de %d', dois, 2)
puts format('%d Multiplo(s) de %d', tres, 3)
puts format('%d Multiplo(s) de %d', quatro, 4)
puts format('%d Multiplo(s) de %d', cinco, 5)
