def somaPA(a1, an, n)
  ((a1 + an) * n) / 2
end

t = gets.to_i
for i in 1..t
  entrada = gets.chomp.split.map(&:to_i)
  x = entrada[0]
  y = entrada[1]

  x += 1 - (x % 2)
  puts somaPA(x, x + (2 * (y - 1)), y)
end
