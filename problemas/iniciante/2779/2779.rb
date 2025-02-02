require 'set'

n = gets.to_i
m = gets.to_i

figurinhas = Set.new
for i in 1..m
  x = gets.to_i
  figurinhas.add(x)
end

puts(n - figurinhas.length)
