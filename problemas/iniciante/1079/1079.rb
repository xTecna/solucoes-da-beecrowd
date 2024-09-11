n = gets.to_i

for i in (1..n)
    a,b,c = gets.chomp.split.map(&:to_f)
    media = (2 * a + 3 * b + 5 * c)/10
    puts "%.1f" % media
end