n = gets.to_i

for i in (1..n) do
  numeros = gets.chomp.split.map(&:to_i)
  x = numeros[0]
  y = numeros[1]

  puts format('%d cm2', (x * y) / 2)
end
