n = gets.to_i

conta = 7
if (n > 100)
    conta += (n - 100) * 5
    n = 100
end
if (n > 30)
    conta += (n - 30) * 2
    n = 30
end
if (n > 10)
    conta += (n - 10)
end

puts conta