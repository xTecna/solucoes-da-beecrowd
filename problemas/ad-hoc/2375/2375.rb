diametro = gets.to_i
altura, largura, profundidade = gets.chomp.split.map(&:to_i)

if (altura >= diametro && largura >= diametro && profundidade >= diametro)
    puts "S"
else
    puts "N"
end