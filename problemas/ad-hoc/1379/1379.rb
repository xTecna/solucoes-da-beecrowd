while true
    a, b = gets.chomp.split.map(&:to_i)
    if a == 0 && b == 0
        break
    end

    puts (2 * a - b)
end