n = gets.to_i

for i in 1..n do
  numeros = gets.chomp.split.map(&:to_i)
  puts(numeros[0] + numeros[1])
end
