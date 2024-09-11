pares = 0
impares = 0
positivos = 0
negativos = 0
for i in 1..5
    numero = gets.to_i
    
    if numero % 2 == 0
        pares += 1
    else
        impares += 1
    end
    
    if numero > 0
        positivos += 1
    elsif numero < 0
        negativos += 1
    end
end

puts "#{pares} valor(es) par(es)"
puts "#{impares} valor(es) impar(es)"
puts "#{positivos} valor(es) positivo(s)"
puts "#{negativos} valor(es) negativo(s)"