def somaPA(a1, an, n)
  ((a1 + an) * n) / 2
end

entrada = gets.chomp.split.map(&:to_i)
a = entrada[0]

n = 0
for i in 1..entrada.length do
  n = entrada[i]
  break if n > 0
end

puts somaPA(a, a + n - 1, n)
