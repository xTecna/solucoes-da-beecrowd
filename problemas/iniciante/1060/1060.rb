positivos = 0
for i in 1..6
    entrada = gets.to_f
    if entrada > 0
        positivos += 1
    end
end

puts "#{positivos} valores positivos"