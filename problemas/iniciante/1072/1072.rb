dentro = 0
fora = 0

N = gets.to_i
for i in 1..N
    numero = gets.to_i
    if (10 <= numero && numero <= 20)
        dentro += 1
    else
        fora += 1
    end
end

puts "#{dentro} in"
puts "#{fora} out"