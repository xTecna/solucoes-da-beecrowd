entrada = gets.chomp.split

codigo = entrada[0].to_i
quantidade = entrada[1].to_i

precos = [4.00, 4.50, 5.00, 2.00, 1.50]

puts "Total: R$ %.2f" % (precos[codigo - 1] * quantidade)