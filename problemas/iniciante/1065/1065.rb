pares = 0
for i in 1..5
    numero = gets.to_i
    if numero % 2 == 0
        pares += 1
    end
end

puts "#{pares} valores pares"