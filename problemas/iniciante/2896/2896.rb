t = gets.to_i

for i in 1..t
  entrada = gets.chomp.split.map(&:to_i)
  n = entrada[0]
  k = entrada[1]

  puts (n/k + n%k)
end