x,y = gets.chomp.split.map(&:to_i)
while x != 0 && y != 0
    if x > 0
        if y > 0
            puts "primeiro"
        else
            puts "quarto"
        end
    elsif y > 0
        puts "segundo"
    else
        puts "terceiro"
    end

    x,y = gets.chomp.split.map(&:to_i)
end