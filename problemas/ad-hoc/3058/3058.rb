N = gets.to_i

menor_preco = 1000.0
for i in (1..N) do
    numeros = gets.chomp.split.map(&:to_f)
    p = numeros[0]
    g = numeros[1]

    menor_preco = [menor_preco, p / g].min
end

puts "%.2f" % (1000 * menor_preco)