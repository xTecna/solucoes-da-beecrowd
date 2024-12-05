numeros = gets.chomp.split.map(&:to_i)

maior = numeros[0]
for numero in numeros
    maior = [maior, numero].max
end

puts maior