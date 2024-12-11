N = gets.chomp.to_i

for i in (1..N) do
    cartas = gets.chomp

    if cartas.include?('A') && cartas.include?('K') && cartas.include?('Q') && cartas.include?('J')
        puts "Aaah muleke"
    else
        puts "Ooo raca viu"
    end
end